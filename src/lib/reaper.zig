const std = @import("std");
const main_module = @import("../main.zig");
const control_surface = @import("../control_surface.zig");
pub usingnamespace @import("reaper_functions.zig");
pub const ImGui = @import("reaper_imgui.zig");

const Self = @This();

/// Flag for detecting is extension on/off (terminate script if looping/crash)
var is_looping: bool = false;
var imgui_init: bool = false;
var myCsurf: control_surface.c.C_ControlSurface = undefined;

/// Extension bindings structs
pub const extension = struct {
    // add all reaper function pointers here
    pub usingnamespace Self.fnPtrs;

    /// Set the loop type of extension
    pub const loopType = enum {
        loop,
        none,
    };

    // Action_id for registrating extension
    pub var action_id: c_int = undefined;
    pub const PLUGIN_VERSION = 0x20E;

    pub const HINSTANCE = *opaque {};
    pub const HWND = *opaque {};
    pub const KbdSectionInfo = *opaque {};

    pub const plugin_info_t = extern struct {
        caller_version: c_int,
        hwnd_main: HWND,
        register: ?@TypeOf(extension.plugin_register),
        getFunc: ?@TypeOf(extension.plugin_getapi),
    };

    pub const custom_action_register_t = extern struct {
        section: c_int,
        id_str: [*:0]const u8,
        name: [*:0]const u8,
        extra: ?*anyopaque = null,
    };

    /// Initialize API
    fn initFunctions(rec: *plugin_info_t) bool {
        if (rec.caller_version != PLUGIN_VERSION) {
            std.debug.print("expected REAPER API version {x}, got {x}\n", .{ PLUGIN_VERSION, rec.caller_version });
            return false;
        }

        const getFunc = rec.getFunc.?;
        inline for (@typeInfo(@This()).Struct.decls) |decl| {
            comptime var decl_type = @typeInfo(@TypeOf(@field(@This(), decl.name)));
            const is_optional = decl_type == .Optional;
            if (is_optional)
                decl_type = @typeInfo(decl_type.Optional.child);
            if (decl_type != .Pointer or @typeInfo(decl_type.Pointer.child) != .Fn)
                continue;
            if (getFunc(decl.name)) |func|
                @field(@This(), decl.name) = @ptrCast(func)
            else if (is_optional)
                @field(@This(), decl.name) = null
            else {
                std.debug.print("unable to import the API function '{s}'\n", .{decl.name});
                return false;
            }
        }

        return true;
    }
    // Needed to import namespaces
    const init = initFunctions;

    /// Initialize loop (timer) - Start/Stop
    pub fn loop(set_loop: bool) !void {
        if (set_loop) {
            _ = extension.plugin_register("timer", @constCast(@ptrCast(&onTimer)));
        } else {
            _ = extension.plugin_register("-timer", @constCast(@ptrCast(&onTimer)));
            try main_module.initVars(false);
            std.debug.print("GLOBAL VARS DEINIT\n", .{});
            registerCsurf(false);
        }
        is_looping = set_loop;
    }
};

fn registerCsurf(init: bool) void {
    if (init) {
        std.debug.print("CSURF INIT\n", .{});
        myCsurf = control_surface.init();
        _ = extension.plugin_register("csurf_inst", myCsurf.?);
    } else {
        std.debug.print("CSURF DEINIT\n", .{});
        _ = extension.plugin_register("-csurf_inst", myCsurf.?);
        control_surface.deinit(myCsurf);
    }
}

/// Run when extension is activated via action list or onCommand api call from Reaper
fn onCommand(sec: *extension.KbdSectionInfo, command: c_int, val: c_int, val2hw: c_int, relmode: c_int, hwnd: extension.HWND) callconv(.C) c_char {
    _ = .{ sec, val, val2hw, relmode, hwnd };

    if (command == extension.action_id) {
        if (imgui_init == false) {
            ImGui.init(extension.plugin_getapi) catch {
                std.debug.print("IMGUI INIT FAILED\n", .{});
                return 0;
            };
            std.debug.print("IMGUI INIT\n", .{});
            imgui_init = true;
        }
        switch (main_module.ExtensionCfg.loopType) {
            .loop => {
                if (is_looping == false) {
                    registerCsurf(true);
                    std.debug.print("GLOBAL VARS INIT\n", .{});
                    main_module.initVars(true) catch {
                        std.debug.print("GLOBAL VARS INIT FAILED\n", .{});
                        return 0;
                    };
                }
                extension.loop(!is_looping) catch {
                    std.debug.print("GLOBAL VARS INIT FAILED\n", .{});
                    return 0;
                };
            },
            .none => {
                main_module.initVars(true);
                try main_module.main();
                main_module.initVars(false);
            },
        }
        return 1;
    }
    return 0;
}

/// Call function on timer interval (Reaper 33hz)
fn onTimer() callconv(.C) void {
    main_module.main() catch //{
    // stop on error
        extension.loop(false) catch {
        std.debug.print("FAILED TO DEINIT VARS\n", .{});
    };
    // if (main_module.ExtensionCfg.loopType == .imgui) {
    //     // extension.ShowMessageBox(main_module.ImGui.last_error.?, main_module.ExtensionCfg.name, 0);
    // }
    //};
}

/// Reaper entry point init (called by reaper)
export fn ReaperPluginEntry(instance: extension.HINSTANCE, rec: ?*extension.plugin_info_t) c_int {
    _ = instance;

    if (rec == null) {
        return 0; // cleanup here
    }
    // init api functions
    if (!extension.init(rec.?)) {
        return 0;
    }
    // register extension in action list on reaper startup
    const action = extension.custom_action_register_t{ .section = 0, .id_str = main_module.ExtensionCfg.id, .name = main_module.ExtensionCfg.name };
    extension.action_id = extension.plugin_register("custom_action", @constCast(@ptrCast(&action)));
    // Run when extension is activated via action list or onCommand api call from Reaper
    _ = extension.plugin_register("hookcommand2", @constCast(@ptrCast(&onCommand)));
    std.debug.print("EXTENSION INIT\n", .{});
    return 1;
}
