var line_x = global.grid_size;
var line_y = global.menu_offset + global.grid_size;

draw_set_color(c_ltgray);

//vertical
while line_x < room_width {
	draw_line(line_x, global.menu_offset, line_x, room_height);
	line_x += global.grid_size;
}

var count = 1;
//horizontal
while line_y < room_height {
	if count % 5 == 0 {
		draw_set_color(c_black)
	}
	draw_line(0, line_y, room_width, line_y);
	line_y += global.grid_size;
	count++;
	draw_set_color(c_ltgray);
}

//redraw bold vertical lines
line_x = global.grid_size * 5;
draw_set_color(c_black);
while line_x < room_width {
	draw_line(line_x, global.menu_offset, line_x, room_height);
	line_x += global.grid_size * 5;
}