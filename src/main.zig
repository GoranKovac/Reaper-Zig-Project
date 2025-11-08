// zig build-lib -dynamic -O ReleaseFast -femit-bin=reaper_zig.so
const std = @import("std");
const extension = @import("lib/reaper.zig");
const r = extension.reaper;
const im = extension.ImGui;
// preload reaper.zig so it can register ReaperEntryPoint and call main() from there
comptime {
    _ = extension;
}

pub const ExtensionCfg = struct {
    pub const id: [*:0]const u8 = "ZIGGY_12345";
    pub const name: [*:0]const u8 = "Zig TEST";
    pub const is_imgui: bool = true;
    pub const is_csurf: bool = true;
};

pub const globalVars = @import("imgui_vars_test.zig");

pub var globals: ?globalVars = null;

// Init/deinit global vars (called from extension entrypoint)
pub fn initVars(init: bool) !void {
    if (init) {
        globals = try globalVars.init();
    } else {
        globals = null;
    }
}
// called from extension entrypoint
pub fn main() !void {
    var g = &globals.?;

    try im.SetNextWindowSize(.{ g.ctx, 400, 80, im.Cond_FirstUseEver });
    var open: bool = true;

    if (try im.Begin(.{ g.ctx, g.plugin_name, &open })) {
        if (try im.Button(.{ g.ctx, "Click me!" })) {
            g.click_count +%= 1;
        }
        var buf: [100]u8 = undefined;
        const res = try std.fmt.bufPrintZ(&buf, "Clicked Ammount {d}", .{g.click_count});

        try im.SameLine(.{g.ctx});
        try im.Text(.{ g.ctx, res });
        _ = try im.InputText(.{ g.ctx, "text input", &g.text, g.text.len });
        try im.End(.{g.ctx});
    }

    if (!open) {
        try extension.loop(false);
    }
}
