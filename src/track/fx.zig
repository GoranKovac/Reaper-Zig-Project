pub const std = @import("std");
pub const r = @import("../lib/reaper.zig");

var gpa: std.heap.GeneralPurposeAllocator(.{}) = undefined;
var allocator: std.mem.Allocator = undefined;
pub var map: FxMap = undefined;

/// Initialize Gpa & map
pub fn gpaMapInit() void {
    gpa = @TypeOf(gpa){};
    allocator = gpa.allocator();
    map = FxMap.init();
}

/// DeInitialize Gpa & map
pub fn gpaMapDeinit() void {
    map.deinit();
    _ = gpa.deinit();
}

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
};

/// FX Data struct
pub const FxData = struct {
    name: r.CString(255) = undefined,
    fx_id: c_int = undefined,
    parent_buf: r.CString(255) = undefined,
    parent_fx_id: ?c_int = null,
    parallel_buf: r.CString(255) = undefined,
    parallel: c_int = undefined,
    ident: r.CString(255) = undefined,
    type: r.CString(255) = undefined,
    guid: r.GUID = undefined,

    /// Create FX struct from fx data
    fn get(track: r.MediaTrack, fx_id: c_int) !?FxData {
        var data: FxData = FxData{};
        // if this one fail others will also
        data.guid = r.TrackFX_GetFXGUID(track, fx_id) orelse return null;
        data.fx_id = fx_id;
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "fx_name", data.name.ptr(), data.name.len());
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "fx_ident", data.ident.ptr(), data.ident.len());
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "parallel", data.parallel_buf.ptr(), data.parallel_buf.len());
        data.parallel = try std.fmt.parseInt(c_int, data.parallel_buf.span(), 10);
        _ = r.TrackFX_GetNamedConfigParm(track, fx_id, "fx_type", data.type.ptr(), data.type.len());
        const rv_parrent: bool = r.TrackFX_GetNamedConfigParm(track, fx_id, "parent_container", data.parent_buf.ptr(), data.parent_buf.len());
        if (rv_parrent)
            data.parent_fx_id = try std.fmt.parseInt(c_int, data.parent_buf.span(), 10);

        return data;
    }

    fn print(self: FxData) void {
        std.debug.print("FX NAME {s}\n", .{self.name.buf});
        std.debug.print("FX GUID {anytype}\n", .{self.guid});
        std.debug.print("FX ID {d}\n", .{self.fx_id});
        std.debug.print("FX PARRENT ID {?}\n", .{self.parent_fx_id});
        std.debug.print("FX PARALLEL {d}\n", .{self.parallel});
        std.debug.print("FX IDENT {s}\n", .{self.ident.buf});
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
                //FxData.print(fx);
                try fx_list.map.put(cont_fx_id, fx);
                if (std.mem.eql(u8, fx.type.cspan(), "Container")) {
                    var cont_fx_cnt: r.CString(255) = undefined;
                    const rv_cont_fx_cnt: bool = r.TrackFX_GetNamedConfigParm(track, cont_fx_id, "container_count", cont_fx_cnt.ptr(), cont_fx_cnt.len());
                    if (rv_cont_fx_cnt) {
                        const cont_cnt_usize: usize = try std.fmt.parseUnsigned(usize, cont_fx_cnt.span(), 10);
                        try iterateContFx(track, cont_cnt_usize, cont_fx_id, fx_list);
                    }
                }
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
            //FxData.print(fx);
            try fx_list.map.put(fx_id, fx);
            if (std.mem.eql(u8, fx.type.cspan(), "Container")) {
                var buf_cont_fx_cnt: r.CString(255) = undefined;
                const cont_fx_cnt_rv: bool = r.TrackFX_GetNamedConfigParm(track, fx_id, "container_count", buf_cont_fx_cnt.ptr(), buf_cont_fx_cnt.len());
                if (cont_fx_cnt_rv) {
                    const cont_usize: usize = try std.fmt.parseUnsigned(usize, buf_cont_fx_cnt.span(), 10);
                    try iterateContFx(track, cont_usize, fx_id, fx_list);
                }
            }
        }
    }
}

/// Get all track fx and insert into map
/// Should be called only from csurf
pub fn getFxData(track: r.MediaTrack) void {
    map.refresh();
    iterTrackFx(track, &map) catch {
        std.debug.print("UNABLE TO ITERATE TRACK FX\n", .{});
    };
    std.debug.print("FX REFRESHED\n", .{});
    // var iterator = map.iter();
    // while (iterator.next()) |entry| {
    //     std.debug.print("FX ID {d}  NAME {s}\n", .{ entry.key_ptr.*, entry.value_ptr.name.buf });
    // }
}
