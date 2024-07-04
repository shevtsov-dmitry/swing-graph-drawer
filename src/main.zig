const std = @import("std");

const WIDTH = 400;
const HEIGHT = 400;
const CIRCLE_DIAMETER = 50;
const CIRCLE_RADIUS = (CIRCLE_DIAMETER / 2);
const CENTER_X = (WIDTH / 2);
const CENTER_Y = (HEIGHT / 2);

// BMP file header
const BITMAP_FILE_HEADER = struct {
    bfType: u16,
    bfSize: u32,
    bfReserved1: u16,
    bfReserved2: u16,
    bfOffBits: u32,
};

// BMP info header
const BITMAP_INFO_HEADER = struct {
    biSize: u32,
    biWidth: i32,
    biHeight: i32,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: u32,
    biSizeImage: u32,
    biXPelsPerMeter: i32,
    biYPelsPerMeter: i32,
    biClrUsed: u32,
    biClrImportant: u32,
};

pub fn main() !void {
    const mem = std.heap.page_allocator;
    const img = try mem.alloc(u8, WIDTH * HEIGHT * 3);
    std.debug.print("{}", .{img.len});
}

fn set_pixel(img: *u8, x: i32, y: i32, r: u8, g: u8, b: u8) void {
    const index = (x + y * WIDTH) * 3;
    img[index + 0] = b; // BMP format stores pixels in BGR order
    img[index + 1] = g;
    img[index + 2] = r;
}
