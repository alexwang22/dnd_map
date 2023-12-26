if mouse_check_button(mb_left) {
	if collision_point(mouse_x, mouse_y, self, true, false) {
		selected = true;
	}
	else {
		if point_in_rectangle(mouse_x, mouse_y, 0, global.menu_offset, room_width, room_height) && selected {
			event_user(0);
		}
		selected = false;
	}
}

color = [
	color_get_red(obj_color_selector.selected_color) / 255,
	color_get_green(obj_color_selector.selected_color) / 255,
	color_get_blue(obj_color_selector.selected_color) / 255,
	1.0
]