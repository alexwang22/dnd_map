if mouse_check_button_pressed(mb_left) {
	var button_x = x + sprite_width * (value - min_value) / (max_value - min_value);
	var button_y = y;
	if point_in_rectangle(mouse_x, mouse_y, button_x - 2, button_y - 7, button_x + 2, button_y + 7) {
		selected = true;
	}
}

if !mouse_check_button(mb_left) {
	selected = false;
}

if selected {
	value = clamp((mouse_x - x) / sprite_width * (max_value - min_value) + min_value, min_value, max_value);
}

if instance_exists(obj_bg_drawer) {
	var scale = power(max_scale, value);
	obj_bg_drawer.scale = scale;
}