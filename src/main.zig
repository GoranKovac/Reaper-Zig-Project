// zig build-lib -dynamic -O ReleaseFast -femit-bin=reaper_zig.so
const std = @import("std");
const reaper = @import("lib/reaper.zig");
const ImGui = reaper.ImGui;
// preload reaper.zig so it can register ReaperEntryPoint and call main() from there
comptime {
    _ = reaper;
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
    } else {
        globals = null;
    }
}

// called from extension entrypoint
pub fn main() !void {
    var g = &globals.?;

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
        try reaper.extension.loop(false);
    }
}
