pub const im = @import("lib/reaper_imgui.zig");
const std = @import("std");

pub var im_globals: ?ImguiVars = null;
pub var misc_globals: ?MiscGlobals = null;

pub const ImguiVars = struct {
    plugin_name: [*:0]const u8 = "ziggy",
    ctx: im.ContextPtr = null,
    dl: im.DrawListPtr = undefined,
    win_pos: Point = undefined,
    flt_min_max: Point = undefined,
    i_spacing: Point = undefined,
    f_padding: Point = undefined,
    w_padding: Point = undefined,

    /// Initialize imgui globals
    pub fn init(var_init: bool) !void {
        if (var_init) {
            im_globals = ImguiVars{ .ctx = try im.CreateContext(.{"My First Ziggy"}) };
            if (im_globals) |*data| {
                try im.SetConfigVar(.{ data.ctx, im.ConfigVar_WindowsMoveFromTitleBarOnly, 1 });
                try im.NumericLimits_Float(.{ &data.flt_min_max.x, &data.flt_min_max.y });
                try im.GetStyleVar(.{ data.ctx, im.StyleVar_ItemSpacing, &data.i_spacing.x, &data.i_spacing.y });
                try im.GetStyleVar(.{ data.ctx, im.StyleVar_FramePadding, &data.f_padding.x, &data.f_padding.y });
                try im.GetStyleVar(.{ data.ctx, im.StyleVar_WindowPadding, &data.w_padding.x, &data.w_padding.y });
            }
        } else {
            im_globals = null;
        }
    }
};

pub const MiscGlobals = struct {
    add_btn_size_w: f64 = 26,
    add_btn_size_h: f64 = 6,
    para_name_w: f64 = 0,
    para_name_h: f64 = 0,

    pub fn init(var_init: bool) !void {
        if (var_init) {
            misc_globals = MiscGlobals{};
            try im.CalcTextSize(.{ im_globals.?.ctx, "||", &misc_globals.?.para_name_w, &misc_globals.?.para_name_h });
            misc_globals.?.para_name_w += im_globals.?.f_padding.x * 2;
        } else {
            misc_globals = null;
        }
    }
};

pub const Point = struct { x: f64 = undefined, y: f64 = undefined };
