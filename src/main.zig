const std = @import("std");
const print = std.debug.print;

const FileHeader = struct {
    magic: [10]u8 = "SQLitez 1", // Similar to SQLite's magic header
    page_size: u16 = 4096, // Page size in bytes, default 4096
    version: u16 = 1, // Database version, default 1
    reserved: [32]u8 = undefined, // Reserved for future use
};

pub fn main() void {
    print("Hello World\n", .{});
}
