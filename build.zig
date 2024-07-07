const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addSharedLibrary(.{
        .name = "reaper_zig",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const root = b.path("src/lib/csurf/");
    lib.addIncludePath(root);

    const sourcefileOpts = std.Build.Module.AddCSourceFilesOptions{ .files = &.{ "src/lib/csurf/control_surface.cpp", "src/lib/csurf/control_surface_wrapper.cpp" }, .flags = &.{ "-fPIC", "-O2", "-std=c++14", "-IWDL/WDL" } };
    lib.addCSourceFiles(sourcefileOpts);

    lib.linkLibC();
    lib.linkLibCpp();

    const client_install = b.addInstallArtifact(lib, .{ .dest_sub_path = "reaper_zig.so" });
    b.getInstallStep().dependOn(&client_install.step);

    // b.installArtifact(lib);
}
