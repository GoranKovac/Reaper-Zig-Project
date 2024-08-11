// zig build-lib -dynamic -O ReleaseFast -femit-bin=reaper_zig.so
const std = @import("std");
const r = @import("lib/reaper.zig");
const ImGui = r.ImGui;
const fx = @import("track/fx.zig");
// preload reaper.zig so it can register ReaperEntryPoint and call main() from there
comptime {
    _ = r;
}

pub const ExtensionCfg = struct {
    pub const id: [*:0]const u8 = "ZIGGY_12345";
    pub const name: [*:0]const u8 = "Zig TEST";
};

pub const globalVars = @import("imgui_vars_test.zig");

pub var globals: ?globalVars = null;

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
pub const allocator = gpa.allocator();
pub var fx_map = fx.FxMap.init(allocator);

// Init/deinit global vars (called from extension entrypoint)
pub fn initVars(init: bool) !void {
    if (init) {
        globals = try globalVars.init();
    } else {
        globals = null;
        fx_map.deinit();
        _ = gpa.deinit();
    }
}

pub fn getFxData(track: r.MediaTrack) void {
    fx_map.clearRetainingCapacity();
    //fx_map.deinit();
    //fx_map = fx.FxMap.init(allocator);
    fx.iterTrackFx(track, &fx_map) catch {
        std.debug.print("UNABLE TO ITERATE TRACK FX\n", .{});
    };

    var iterator = fx_map.map.iterator();
    while (iterator.next()) |entry| {
        std.debug.print("FX ID {d}  NAME {s}\n", .{ entry.key_ptr.*, entry.value_ptr.name.buf });
    }
}

// called from extension entrypoint
pub fn main() !void {
    const g = &globals.?;

    try ImGui.SetNextWindowSize(.{ g.ctx, 400, 80, ImGui.Cond_FirstUseEver });

    var open: bool = true;
    if (try ImGui.Begin(.{ g.ctx, g.plugin_name, &open })) {
        try ImGui.End(.{g.ctx});
    }

    if (!open) {
        try r.extension.loop(false);
    }
}
