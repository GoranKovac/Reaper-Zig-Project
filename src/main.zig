// zig build-lib -dynamic -O ReleaseFast -femit-bin=reaper_zig.so
// preload reaper.zig so it can register ReaperEntryPoint and call main() from there
comptime {
    _ = @import("lib/reaper.zig");
}
const std = @import("std");
pub const reaper = @import("lib/reaper.zig");
pub const ImGui = @import("lib/reaper_imgui.zig");

pub const ExtensionCfg = struct {
    pub const id: [*:0]const u8 = "ZIGGY_12345";
    pub const name: [*:0]const u8 = "Zig TEST";
    pub const loopType: reaper.extension.loopType = .loop;
};

pub const globalVars = @import("imtest.zig");

pub var globals: ?globalVars = null;

// Init/deinit global vars (called from extension entrypoint)
pub fn initVars(init: u8) void {
    if (init == 1) {
        globals = globalVars.init();
    } else {
        globals = null;
    }
}

// called from extension entrypoint
pub fn main() !void {
    var g = &globals.?;

    if (g.ctx == null) {
        try ImGui.init(reaper.fnPtrs.plugin_getapi);
        g.ctx = try ImGui.CreateContext(.{g.plugin_name});
    }
    try ImGui.SetNextWindowSize(.{ g.ctx, 400, 80, ImGui.Cond_FirstUseEver });

    var open: bool = true;
    if (try ImGui.Begin(.{ g.ctx, g.plugin_name, &open })) {
        if (try ImGui.Button(.{ g.ctx, "Click me!" })) {
            g.click_count +%= 1;
        }
        var buf: [100]u8 = undefined;
        const res = try std.fmt.bufPrintZ(&buf, "Clicked Ammount {d}", .{g.click_count});

        try ImGui.SameLine(.{g.ctx});
        try ImGui.Text(.{ g.ctx, res });
        _ = try ImGui.InputText(.{ g.ctx, "text input", &g.text, g.text.len });
        try ImGui.End(.{g.ctx});
    }

    if (!open) {
        reaper.extension.loop(false);
    }
}
