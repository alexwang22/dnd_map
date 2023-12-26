function draw_color_button(value, index) {
	var button_pos = map_color_index_to_position(index);
	draw_circle_color(button_pos[0], button_pos[1], button_radius, value, value, false);
	draw_circle(button_pos[0], button_pos[1], button_radius, true);
	if selected_color == value {
		draw_circle(button_pos[0], button_pos[1], button_radius + 2, true);
	}
}

array_foreach(color_list, draw_color_button);