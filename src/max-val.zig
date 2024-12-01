const std = @import("std");

pub fn main() !void {
    var max_val: i32 = std.math.minInt(i32);
    const list = [_]i32{ 10, 1, 2, 3, 4, 5, 15, 7 };

    for (list) |val| {
        if (val > max_val) {
            max_val = val;
        }
        std.debug.print("{d}\n", .{val});
    }

    std.debug.print("Max value: {d}\n", .{max_val});
}
