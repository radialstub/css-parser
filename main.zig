const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello World!\n", .{});

    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    const allocator = arena.allocator();

    var args = std.process.args();
    _ = args.next(allocator);

    while (args.next(allocator)) |arg_or_err| {
        const arg = arg_or_err catch {
            std.debug.print("Could not parse arguments.\n", .{});
            std.debug.print("Could not parse arguments.\n", .{});
        };
    }
}
