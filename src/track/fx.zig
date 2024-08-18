const std = @import("std");
const r = @import("../lib/reaper.zig");
const im = r.ImGui;

pub const GlobalVars = @import("../imgui_vars_test.zig");

var gpa: std.heap.GeneralPurposeAllocator(.{}) = undefined;
pub var allocator: std.mem.Allocator = undefined;
pub var map: ?FxMap = null;

/// Initialize Gpa & map
pub fn gpaMapInit(var_init: bool) void {
    if (var_init) {
        gpa = @TypeOf(gpa){};
        allocator = gpa.allocator();
        map = FxMap.init();
    } else {
        map.?.deinit();
        _ = gpa.deinit();
        map = null;
    }
    // gpa = @TypeOf(gpa){};
    // allocator = gpa.allocator();
    // map = FxMap.init();
}

/// DeInitialize Gpa & map
pub fn gpaMapDeinit() void {
    map.?.deinit();
    _ = gpa.deinit();
    map = null;
}

///
const MapValue = union {
    hash: std.AutoArrayHashMap(c_int, FxData),
    map: FxMap,
};

/// Map struct that holds all track fx
pub const FxMap = struct {
    map: std.AutoArrayHashMap(c_int, FxData),

    pub fn init() FxMap {
        return .{
            .map = std.AutoArrayHashMap(c_int, FxData).init(allocator),
        };
    }

    pub fn deinit(self: *FxMap) void {
        self.map.deinit();
    }

    pub fn refresh(self: *FxMap) void {
        if (self.map.keys().len > 0) {
            self.map.clearRetainingCapacity();
        }
    }

    pub fn iter(self: *FxMap) @TypeOf(self.map.iterator()) {
        return self.map.iterator();
    }

    pub fn calcSize(self: *FxMap) GlobalErrors!f64 {
        const im_g = &GlobalVars.im_globals.?;
        var cur_0: *f64 = undefined;
        var long: f64 = 0;
        var iterator = self.iter();
        while (iterator.next()) |entry| {
            var space: f64 = 0;
            if (entry.value_ptr.parallel == 0) {
                entry.value_ptr.width = 0;
                cur_0 = &entry.value_ptr.width.?;
                cur_0.* = 0;
            } else {
                space = im_g.i_spacing.x;
            }
            var txt_wh = GlobalVars.Point{};
            if (entry.value_ptr.childs) |*child_map| {
                txt_wh.x = try child_map.calcSize();
                txt_wh.x += (im_g.w_padding.x * 2);
            } else {
                im.CalcTextSize(.{ im_g.ctx, entry.value_ptr.name.cspan(), &txt_wh.x, &txt_wh.y }) catch {
                    return GlobalErrors.CalcTextSizeError;
                };
                txt_wh.x += (im_g.f_padding.y * 2);
            }
            cur_0.* += txt_wh.x + space;
            if (cur_0.* > long) {
                long = cur_0.*;
            }
        }
        return long;
    }
};

const FxDataErrors = error{ ParseIntError, IterContError, ImguiCalcTxtSize };
const GlobalErrors = error{CalcTextSizeError};
/// FX Data struct
pub const FxData = struct {
    width: ?f64 = null,
    name: r.CString(255) = undefined,
    name_size: GlobalVars.Point = undefined,
    fx_id: c_int = undefined,
    parent_buf: r.CString(255) = undefined,
    parent_fx_id: ?c_int = null,
    parallel_buf: r.CString(255) = undefined,
    parallel: c_int = undefined,
    ident: r.CString(255) = undefined,
    type: r.CString(255) = undefined,
    guid: r.GUID = undefined,
    childs: ?FxMap = null,
    is_cont: bool = false,

    /// Create FX struct from fx data
    fn get(track: r.MediaTrack, fx_id: c_int) FxDataErrors!?FxData {
        var data: FxData = FxData{};
        // if this one fail others will also
        data.guid = r.TrackFX_GetFXGUID(track, fx_id) orelse return null;
        data.fx_id = fx_id;
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "fx_name", data.name.ptr(), data.name.len());
        im.CalcTextSize(.{ GlobalVars.im_globals.?.ctx, data.name.cspan(), &data.name_size.x, &data.name_size.y }) catch {
            return error.ImguiCalcTxtSize;
        };
        data.name_size.x += GlobalVars.im_globals.?.f_padding.x * 2;
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "fx_ident", data.ident.ptr(), data.ident.len());
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "parallel", data.parallel_buf.ptr(), data.parallel_buf.len());
        data.parallel = std.fmt.parseInt(c_int, data.parallel_buf.span(), 10) catch {
            return error.ParseIntError;
        };
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "fx_type", data.type.ptr(), data.type.len());
        const rv_parrent: bool = r.TrackFX_GetNamedConfigParm(track, fx_id, "parent_container", data.parent_buf.ptr(), data.parent_buf.len());
        if (rv_parrent)
            data.parent_fx_id = std.fmt.parseInt(c_int, data.parent_buf.span(), 10) catch {
                return error.ParseIntError;
            };

        // container
        if (std.mem.eql(u8, data.type.cspan(), "Container")) {
            data.is_cont = true;
            var cont_fx_cnt: r.CString(255) = undefined;
            const rv_cont_fx_cnt: bool = r.TrackFX_GetNamedConfigParm(track, fx_id, "container_count", cont_fx_cnt.ptr(), cont_fx_cnt.len());
            if (rv_cont_fx_cnt) {
                const cont_cnt_usize: usize = std.fmt.parseUnsigned(usize, cont_fx_cnt.span(), 10) catch {
                    return error.ParseIntError;
                };
                data.childs = FxMap.init();
                iterateContFx(track, cont_cnt_usize, fx_id, &data.childs.?) catch {
                    return error.IterContError;
                };
            }
        }
        return data;
    }

    pub fn print(self: FxData) void {
        std.debug.print("FX NAME {s}\n", .{self.name.buf});
        std.debug.print("FX GUID {anytype}\n", .{self.guid});
        std.debug.print("FX ID {d}\n", .{self.fx_id});
        std.debug.print("FX PARRENT ID {?}\n", .{self.parent_fx_id});
        std.debug.print("FX PARALLEL {d}\n", .{self.parallel});
        std.debug.print("FX IDENT {s}\n", .{self.ident.buf});
        std.debug.print("FX 1 WIDTH {?}\n", .{self.width});
        std.debug.print("\n", .{});
    }
};

/// Iterate container fx (recursive for nested containers)
fn iterateContFx(track: r.MediaTrack, container_cnt: usize, fx_id: c_int, fx_list: *FxMap) !void {
    for (0..container_cnt) |i| {
        var buf_cont_item: [255:0]u8 = undefined;
        var cont_item_fx_id: r.CString(255) = undefined;

        const cont_item_id: [*:0]const u8 = try std.fmt.bufPrintZ(&buf_cont_item, "container_item.{d}", .{i});
        const rv_fx_idx: bool = r.TrackFX_GetNamedConfigParm(track, fx_id, cont_item_id, cont_item_fx_id.ptr(), cont_item_fx_id.len());

        if (rv_fx_idx) {
            const cont_fx_id: c_int = try std.fmt.parseInt(c_int, cont_item_fx_id.span(), 10);
            const fx_data: ?FxData = try FxData.get(track, cont_fx_id);

            if (fx_data) |fx| {
                try fx_list.map.put(cont_fx_id, fx);
            }
        }
    }
}

/// Iterate track fx (root level only)
pub fn iterTrackFx(track: r.MediaTrack, fx_list: *FxMap) !void {
    const cnt: usize = @intCast(r.TrackFX_GetCount(track));
    for (0..cnt) |i| {
        const fx_id: c_int = @intCast(i);
        const fx_data: ?FxData = try FxData.get(track, fx_id);
        if (fx_data) |fx| {
            try fx_list.map.put(fx_id, fx);
        }
    }
    _ = try fx_list.calcSize();
}

/// Get all track fx and insert into map
/// Should be called only from csurf
pub fn getFxData(track: r.MediaTrack) void {
    if (map) |*fx_list| {
        fx_list.refresh();
        iterTrackFx(track, fx_list) catch {
            std.debug.print("UNABLE TO ITERATE TRACK FX\n", .{});
        };
        std.debug.print("FX REFRESHED\n", .{});
        // }
        var iterator = fx_list.iter();
        while (iterator.next()) |entry| {
            std.debug.print("FX ID {d}  NAME {s}\n", .{ entry.key_ptr.*, entry.value_ptr.name.buf });
            if (entry.value_ptr.is_cont) {
                std.debug.print("\t-------------------------\n", .{});
                var c_iterator = entry.value_ptr.childs.?.iter();
                while (c_iterator.next()) |c_entry| {
                    std.debug.print("\t FX ID {d}  NAME {s}\n", .{ c_entry.key_ptr.*, c_entry.value_ptr.name.buf });
                }
            }
        }
    }
}
