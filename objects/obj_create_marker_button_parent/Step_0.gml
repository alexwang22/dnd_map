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