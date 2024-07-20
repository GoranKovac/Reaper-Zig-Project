pub const ImGui = @import("lib/reaper_imgui.zig");
const std = @import("std");

const Self = @This();

plugin_name: [*:0]const u8 = "ziggy hello",
ctx: ImGui.ContextPtr = null,
click_count: u32 = 0,
text: [255:0]u8 = std.mem.zeroes([255:0]u8),

pub fn init() !Self {
    const globals = Self{ .ctx = try ImGui.CreateContext(.{"My First Ziggy"}) };
    return globals;
}
