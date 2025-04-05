const std = @import("std");
const zap = @import("zap");

const questions_per_file = 50;

const max_listed_quiz = 100;
const max_name_len = 30;
const max_text_len = 100;
const max_choice_amount = 5;

const user = struct {
    user_id: u32 = undefined,
    username: [max_name_len]u8 = undefined,
    password_hash: [10]u8 = undefined,
    fn save_pass(self: *user, password: []u8) !void {
        // TODO: Add hash function to encoding
        self.password_hash = password;
    }
    fn cmp_pass(self: *user, password: []u8) !u8 {
        // TODO: Add hash function to encoding
        // Add proper string compare func
        _ = self;
        _ = password;

        return 0;
    }
    fn gen_uid(self: *user) !void {
        self.user_id = std.Random.int(u32);
    }
};

const quiz = struct { 
    arquestions: [questions_per_file][max_text_len]u8,
    choice: [questions_per_file][max_choice_amount][max_text_len]u8,
    answer: [questions_per_file]u8,
    question_type: [questions_per_file]u8,
    nquestions: u8 = 0,
    id: u32,
    title: [max_name_len]u8,
    author: ?[max_name_len]u8
};

const quiz_list = struct {
    nquiz: u32,
    quiznames: [max_listed_quiz][max_name_len]u8,
    authors: ?[max_listed_quiz][max_name_len]u8,
    quizrating: []u32,
    quiz_ids: [max_listed_quiz]u32
};

const quiz_results = struct {
    user: ?[max_name_len]u8,
    quiz_id: u32,
    score: u8,
    max_score: u8
};

const menu = struct {
    nmenu: u8,
    menus: [][]u8,
    wanted_return: u8
};

// TODO: Connect to *user* struct
fn signup(r: zap.Request) void {
    _ = r;

    return;
}

// TODO: Connect to *user* struct
fn login(r: zap.Request) void {
    _ = r;

    return;
}

fn create(r: zap.Request) void {
    _ = r;

    return;
}

fn myq(r: zap.Request) void {
    _ = r;

    return;
}

fn browse(r: zap.Request) void {
    _ = r;

    return;
}

// FIX: Add better implementation of dircheck
fn on_request(r: zap.Request) void {
    if (r.path[1] == 's') {
        signup(r);
    }
    if (r.path[1] == 'l') {
        login(r);
    }
    if (r.path[1] == 'c') {
        create(r);
    }
    if (r.path[1] == 'm') {
        myq(r);
    }
    if (r.path[1] == 'b') {
        browse(r);
    }
}

pub fn main() !void {
    try std.fs.cwd().makeDir("users");
    try std.fs.cwd().makeDir("quiz");
    try std.fs.cwd().makeDir("results");

    var listener = zap.HttpListener.init(.{
        .port = 3000,
        .on_request = on_request,
        .log = false,
    });
    try listener.listen();

    std.debug.print("Listening on 0.0.0.0:3000\n", .{});

    // start worker threads
    zap.start(.{
        .threads = 1,
        .workers = 1,
    });
}
