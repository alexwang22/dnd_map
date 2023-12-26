if mouse_check_button_pressed(mb_left) {
	var button_x = x + sprite_width * (global.grid_size - min_value) / (max_value - min_value);
	var button_y = y;
	if point_in_rectangle(mouse_x, mouse_y, button_x - 2, button_y - 7, button_x + 2, button_y + 7) {
		selected = true;
	}
}

if !mouse_check_button(mb_left) {
	selected = false;
}

if selected {
	global.grid_size = clamp((mouse_x - x) / sprite_width * (max_value - min_value) + min_value, min_value, max_value);
}