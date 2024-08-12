pub const im = @import("lib/reaper_imgui.zig");
const std = @import("std");

const Self = @This();

plugin_name: [*:0]const u8 = "ziggy",
ctx: im.ContextPtr = null,
dl: im.DrawListPtr = undefined,
av_x: f64 = 0.0,
av_y: f64 = 0.0,
win_x: f64 = undefined,
win_y: f64 = undefined,
flt_min: f64 = 0.0,
flt_max: f64 = 0.0,
/// Initialize imgui globals
pub fn init() !Self {
    var globals = Self{ .ctx = try im.CreateContext(.{"My First Ziggy"}) };
    try im.SetConfigVar(.{ globals.ctx, im.ConfigVar_WindowsMoveFromTitleBarOnly, 1 });
    try im.NumericLimits_Float(.{ &globals.flt_min, &globals.flt_max });
    return globals;
}
