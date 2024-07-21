import clang.cindex
import re
import os

#add reaper pointers here for tracking
reaper_types = []
zig_types = {
    "double": "f64",
    "const double": "f64",
    "int" : "c_int",
    "const int" : "c_int",
    "float" : "f32",
    "const float" : "f32",
    "const char": "[*:0]const u8",
    "char": "[*:0]u8",
    "void" : "anyopaque",
    "bool" : "bool",
    "unsigned int" : "c_uint",
    "unsigned char" : "u8"
}
#create opaque for reaper types
zig_opaques = []
#for 'var function_name : *fn...
zig_fnPtrs = []
#for function wrapper 'fn function_name(...) {return fnPtrs.function_name(...)}
zig_functions = []

#we are hardcoding mergesort so we will store temporary comments from parsing
mergesort_comment = ''
start = None

def handle_comments(comment):
    #there are some invalid characters in header
    comment = comment.replace('','')
    #add one more forward slash for zig documentation
    comment = '/'.join(('\n' + comment).splitlines(True))
    return comment

def handle_return(ret_arg_string):
    #remove everything between parentheses. Clang AST returns return and arguments together - bool *(*)(int double char*)
    r_type = re.sub("[\(\[].*?[\)\]]", "", ret_arg_string)
    is_pointer = True if r_type.find("*") > -1 else None
    #strip * from type
    stripped_type = r_type.replace("*", "").strip()
    is_char = True if stripped_type.find("char") > -1 else None
    #if not zig/c type create new opaque
    add_reaper_type(stripped_type)
    #convert to zig type
    if stripped_type != 'void' and stripped_type in zig_types:
        r_type = zig_types[stripped_type]
        #(C pointers are on right side -> int*) we need to move it to left fot ZIG
        #pointer returns can return Null so make it optional
        if is_pointer and not is_char:
            r_type = '?*' + r_type
    else:
        #if pointer void convert to anyopaque and optional
        if is_pointer:
            r_type = '?*anyopaque'
    return r_type

def handle_parms(p_type):
    is_pointer = True if p_type.find("*") > -1 else None
    stripped_type = p_type.replace("*", "").strip()
    is_char = True if stripped_type.find("char") > -1 else None
    #if not zig/c type create new opaque
    add_reaper_type(stripped_type)
    #convert to zig type
    if stripped_type in zig_types:
        stripped_type = zig_types[stripped_type]
    if is_pointer and not is_char:
        #(C pointers are on right side -> int*) we need to move it to left fot ZIG
        stripped_type = '*' + stripped_type
    return stripped_type

def add_reaper_type(stripped_type):
    global zig_opaques
    #remove const keyword
    stripped_type = stripped_type.replace("const ", "").strip()
    #if type is not found in zig_types then its reaper type, create opaque
    if not stripped_type in zig_types:
        #keep track of inserted type
        if not stripped_type in reaper_types:
            reaper_types.append(stripped_type)
            zig_opaques.append('const ' + stripped_type + ' = *opaque {};')

def walk_parm(node, param_ptr_array, param_fn_array):
    if node.kind == clang.cindex.CursorKind.PARM_DECL:        
        p_name = (node.spelling or node.displayname)
        p_type = node.type.spelling        
        #some api returns 'fn'/'type' as parameter name (we cannot use that in zig)
        if p_name == 'fn':
            p_name = 'fnOut'
        elif p_name == 'type':
            p_name = 'typeOut'
        p_type = handle_parms(p_type)

        #append name and type (val: bool)
        param_ptr_array.append(p_name + ': ' + p_type)
        param_fn_array.append(p_name)

def walk_fn(node):
    global zig_functions
    global mergesort_comment
    global start
    #for pointers 'var ...'
    param_ptr_array = []
    fn_ptr_str = ''
    #for functions wrapper'fn ...'
    param_fn_array = []
    fn_str = ''    
    
    comment_str = ''
    is_func = None
    #start only when __mergesort is found (api begins there)
    if (node.spelling or node.displayname) == "__mergesort":
        start = True
    #check if line is function
    if node.kind == clang.cindex.CursorKind.VAR_DECL and start:
        print(node.spelling or node.displayname)
        #ignore __mergesort, we will hardcode it since its complicated
        is_func = True if (node.spelling or node.displayname) != "__mergesort" else None
        #store mergesort comment since we need to insert it later
        if (node.spelling or node.displayname) == "__mergesort":
            mergesort_comment = node.raw_comment
        comment_str = node.raw_comment if node.raw_comment != None else ''
        #prepare pointer string
        fn_ptr_str = fn_ptr_str + '\tpub var ' + (node.spelling or node.displayname) +': *fn ('
        #prepare function wrapper string
        fn_str = fn_str + 'pub fn '+ (node.spelling or node.displayname) + '(' 
    for c in node.get_children():
        walk_fn(c)
        if is_func:
            #get function parameters
            walk_parm(c, param_ptr_array, param_fn_array)
    #check if array has parameters so it does not create empty strings
    if is_func:
        #concat all arguments
        ptr_args = ', '.join(param_ptr_array)
        fn_args = ', '.join(param_fn_array)
        fn_return_type = handle_return(node.type.spelling)
        zig_comment = handle_comments(comment_str)
        
        #finish function pointer string
        fn_ptr_str = fn_ptr_str + ptr_args + ') ' + 'callconv(.C) ' + fn_return_type + ' = undefined;'
        #finish function wrapper string
        fn_str = fn_str + ptr_args + ') ' + fn_return_type + ' {\n' + '\treturn fnPtrs.' + (node.spelling or node.displayname) + '(' + fn_args + ');\n}'
        
        #append data
        zig_functions.append(zig_comment)
        zig_functions.append(fn_str)

        zig_fnPtrs.append(fn_ptr_str)


h_path = os.path.realpath(os.path.join(os.getcwd())) +  "/src/lib/"
print(h_path)
index = clang.cindex.Index.create()
walk_fn(index.parse(h_path + 'reaper_plugin_functions.h', args='-x c++ -lc++ -std=c++14 -fsyntax-only -fparse-all-comments'.split()).cursor)
#hardcode __mergesort
zig_fnPtrs.insert(0,'\tpub var __mergesort: *fn (base: ?*anyopaque,  nmemb: usize, size: usize, cmpfunc: ?*fn(*const anyopaque, *const anyopaque) callconv(.C) c_int, tmpspace: ?*anyopaque) callconv(.C) void = undefined;')
zig_functions.insert(0,'pub fn __mergesort(base: ?*anyopaque,  nmemb: usize, size: usize, cmpfunc: ?*fn(*const anyopaque, *const anyopaque) c_int, tmpspace: ?*anyopaque) void {\n\treturn fnPtrs.__mergesort(base,  nmemb, size, cmpfunc, tmpspace);\n}')
zig_functions.insert(0, '\n' + mergesort_comment)
#create final string
zig_string = ('\n'.join(zig_opaques) + '\n' + '\npub const fnPtrs = struct {\n%s\n' % '\n'.join(zig_fnPtrs) + '};\n' + '\n'.join(zig_functions))
#write string to file
with open(h_path + "reaper_functions.zig", "w") as text_file:
    #text_file.write('\n'.join(zig_functions))
    text_file.write(zig_string)