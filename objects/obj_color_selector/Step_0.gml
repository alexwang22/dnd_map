function map_color_index_to_position(index) {
	var rel_x = index % ceil(array_length(color_list) / 2);
	var rel_y = floor(index / ceil(array_length(color_list) / 2));
	var button_x = x + rel_x * (2 * button_radius + button_dist);
	var button_y = y + rel_y * (2 * button_radius + button_dist);
	return [button_x, button_y]; 
}

function check_button(value, index) {
	var button_pos = map_color_index_to_position(index);
	if point_in_circle(mouse_x, mouse_y, button_pos[0], button_pos[1], button_radius) {
		selected_color = value;
	}
}

if mouse_check_button_pressed(mb_left) {
	array_foreach(color_list, check_button);
}