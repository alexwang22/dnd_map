var draw_color_button = function (value, index) {
	var rel_x = index % ceil(array_length(color_list) / 2);
	var rel_y = floor(index / ceil(array_length(color_list) / 2));
	var button_x = x + rel_x * (2 * self.button_radius + self.button_dist);
	var button_y = y + rel_y * (2 * self.button_radius + self.button_dist);
	draw_circle_color(button_x, button_y, self.button_radius, value, value, false);
	draw_circle(button_x, button_y, self.button_radius, true);
	if self.selected_color == value {
		draw_circle(button_x, button_y, self.button_radius + 2, true);
	}
}

array_foreach(color_list, draw_color_button);