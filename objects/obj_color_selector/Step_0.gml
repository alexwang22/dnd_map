var check_button = function (value, index) {
	var rel_x = index % ceil(array_length(color_list) / 2);
	var rel_y = floor(index / ceil(array_length(color_list) / 2));
	var button_x = x + rel_x * (2 * self.button_radius + self.button_dist);
	var button_y = y + rel_y * (2 * self.button_radius + self.button_dist);
	if point_in_circle(mouse_x, mouse_y, button_x, button_y, self.button_radius) {
		self.selected_color = value;
		event_user(0);
	}
}

if mouse_check_button_pressed(mb_left) {
	array_foreach(color_list, check_button);
}