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

pub const GlobalVars = @import("imgui_vars_test.zig");

//pub var globals: ?globalVars = null;

// Init/deinit global vars (called from extension entrypoint)
pub fn initVars(init: bool) !void {
    try GlobalVars.ImguiVars.init(init);
    try GlobalVars.MiscGlobals.init(init);
    fx.gpaMapInit(init);
    //     if (init) {
    //         //try imgui_globals.ImguiVars.init();
    //         fx.gpaMapInit();
    //     } else {
    //         //globals = null;
    //         fx.gpaMapDeinit();
    //     }
}

// called from extension entrypoint
pub fn main() !void {
    const im_g = &GlobalVars.im_globals.?;
    const misc_g = &GlobalVars.misc_globals.?;

    try im.SetNextWindowSize(.{ im_g.ctx, 400, 80, im.Cond_FirstUseEver });

    var open: bool = true;
    if (try im.Begin(.{ im_g.ctx, im_g.plugin_name, &open })) {
        defer im.End(.{im_g.ctx}) catch {};

        try im.GetWindowPos(.{ im_g.ctx, &im_g.win_pos.x, &im_g.win_pos.y });
        im_g.dl = try im.GetWindowDrawList(.{im_g.ctx});
        if (fx.map) |*fx_list| {
            try draw(im_g, misc_g, fx_list);
        }
    }

    if (!open) {
        try r.extension.loop(false);
    }
}

fn drawLines(im_g: *GlobalVars.ImguiVars, misc_g: *GlobalVars.MiscGlobals, btns: *std.ArrayList(GlobalVars.Point)) !void {
    var min = GlobalVars.Point{};
    var max = GlobalVars.Point{};
    try im.GetItemRectMin(.{ GlobalVars.im_globals.?.ctx, &min.x, &min.y });
    try im.GetItemRectMax(.{ GlobalVars.im_globals.?.ctx, &max.x, &max.y });

    const last_idx = btns.items.len - 1;

    try im.DrawList_AddLine(.{ im_g.dl, btns.items[0].x, min.y - im_g.i_spacing.y - misc_g.add_btn_size_h / 2, btns.items[last_idx].x, min.y - im_g.i_spacing.y - misc_g.add_btn_size_h / 2, 0xffffffff });
    try im.DrawList_AddLine(.{ im_g.dl, btns.items[0].x, max.y + im_g.i_spacing.y + misc_g.add_btn_size_h / 2, btns.items[last_idx].x, max.y + im_g.i_spacing.y + misc_g.add_btn_size_h / 2, 0xffffffff });

    for (0..btns.items.len) |i| {
        try im.DrawList_AddLine(.{ im_g.dl, btns.items[i].x, min.y - misc_g.add_btn_size_h / 2 - 1, btns.items[i].x, min.y - im_g.i_spacing.y + 1, 0xffffffff });
        try im.DrawList_AddLine(.{ im_g.dl, btns.items[i].x, btns.items[i].y - 1, btns.items[i].x, max.y + im_g.i_spacing.y + 1, 0xffffffff });
    }
}

fn draw(im_g: *GlobalVars.ImguiVars, misc_g: *GlobalVars.MiscGlobals, fx_hmap: *fx.FxMap) !void {
    if (try im.BeginChild(.{ im_g.ctx, "test", 0, 0, im.ChildFlags_AutoResizeX | im.ChildFlags_AutoResizeY | im.ChildFlags_Border, im.WindowFlags_NoScrollbar })) {
        var avail = GlobalVars.Point{};
        defer im.EndChild(.{im_g.ctx}) catch {};
        try im.GetContentRegionAvail(.{ im_g.ctx, &avail.x, &avail.y });
        avail.x -= (misc_g.para_name_w + im_g.i_spacing.x);

        try im.SetCursorPosX(.{ im_g.ctx, (avail.x - misc_g.add_btn_size_w) / 2 + im_g.w_padding.x });
        _ = try im.Button(.{ im_g.ctx, "+", misc_g.add_btn_size_w, misc_g.add_btn_size_h });

        var list = std.ArrayList(GlobalVars.Point).init(fx.allocator);
        defer list.deinit();
        const vals = fx_hmap.map.values();
        for (0..vals.len) |i| {
            const data = vals.ptr[i];
            if (data.parallel > 0) {
                try im.SameLine(.{im_g.ctx});
            } else {
                list.clearRetainingCapacity();
                if (data.width) |row_width| {
                    if (row_width < avail.x)
                        try im.SetCursorPosX(.{ im_g.ctx, (avail.x - row_width) / 2 + im_g.w_padding.x });
                }
                try im.BeginGroup(.{im_g.ctx});
            }
            if (data.is_cont) {
                try draw(im_g, misc_g, @constCast(&data.childs.?));
                var cont_pos = GlobalVars.Point{};
                try im.GetItemRectMax(.{ im_g.ctx, &cont_pos.x, &cont_pos.y });
                try list.append(GlobalVars.Point{ .x = cont_pos.x - data.name_size.x / 2, .y = cont_pos.y });
            } else {
                try im.BeginGroup(.{im_g.ctx});
                _ = try im.Button(.{ im_g.ctx, data.name.cspan() });
                var btn_pos = GlobalVars.Point{};
                try im.GetItemRectMax(.{ im_g.ctx, &btn_pos.x, &btn_pos.y });
                try list.append(GlobalVars.Point{ .x = btn_pos.x - data.name_size.x / 2, .y = btn_pos.y });
                if (data.parallel > 0 or (i + 1 <= vals.len) and (vals.ptr[i + 1].parallel > 0)) {
                    const cur_pos = try im.GetCursorPosX(.{im_g.ctx});
                    try im.SetCursorPosX(.{ im_g.ctx, cur_pos + data.name_size.x / 2 - misc_g.add_btn_size_w / 2 });
                    _ = try im.Button(.{ im_g.ctx, "e", misc_g.add_btn_size_w, misc_g.add_btn_size_h });
                }
                try im.EndGroup(.{im_g.ctx});
            }
            if ((i + 1 <= vals.len and vals.ptr[i + 1].parallel == 0) or (i == vals.len - 1)) {
                try im.EndGroup(.{im_g.ctx});
                try drawLines(im_g, misc_g, &list);
                try im.SameLine(.{im_g.ctx});
                _ = try im.Button(.{ im_g.ctx, "||" });
                try im.SetCursorPosX(.{ im_g.ctx, (avail.x - misc_g.add_btn_size_w) / 2 + im_g.w_padding.x });
                _ = try im.Button(.{ im_g.ctx, "+", misc_g.add_btn_size_w, misc_g.add_btn_size_h });
            }
        }
    }
}
