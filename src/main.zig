// zig build-lib -dynamic -O ReleaseFast -femit-bin=reaper_zig.so
const std = @import("std");
const r = @import("lib/reaper.zig");
const im = r.ImGui;
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

// Init/deinit global vars (called from extension entrypoint)
pub fn initVars(init: bool) !void {
    if (init) {
        globals = try globalVars.init();
        fx.gpaMapInit();
    } else {
        globals = null;
        fx.gpaMapDeinit();
    }
}

// called from extension entrypoint
pub fn main() !void {
    const im_g = &globals.?;

    try im.SetNextWindowSize(.{ im_g.ctx, 400, 80, im.Cond_FirstUseEver });

    var open: bool = true;
    if (try im.Begin(.{ im_g.ctx, im_g.plugin_name, &open })) {
        try im.GetWindowPos(.{ im_g.ctx, &im_g.win_x, &im_g.win_y });
        try im.GetContentRegionAvail(.{ im_g.ctx, &im_g.av_x, &im_g.av_y });
        im_g.dl = try im.GetWindowDrawList(.{im_g.ctx});
        // var fx_map: fx.FxMap = fx.map;
        // var iterator = fx_map.iter();
        // while (iterator.next()) |entry| {
        //     std.debug.print("FX ID {d}  NAME {s}\n", .{ entry.key_ptr.*, entry.value_ptr.name.buf });
        // }
        try im.End(.{im_g.ctx});
    }

    if (!open) {
        try r.extension.loop(false);
    }
}
