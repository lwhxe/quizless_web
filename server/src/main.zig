const std = @import("std");
const zap = @import("zap");

fn on_request(r: zap.Request) void {
    if (r.method[0] == 'G') {
        std.debug.print("Get method used...", {});
    } else if (r.method[0] == 'P') {
        std.debug.print("Post method used...", {});
    } else {
        std.debug.print("Unknown method used...", {});
    }
}

pub fn main() void {
    var listener = zap.HttpListener.init(.{ .port = 8000, .on_request = on_request, .log = true });
    try listener.listen();

    std.debug.print("Listening on port 8000!", {});

    zap.start(.{
        .threads = 2,
        .workers = 2,
    });

    return;
}
