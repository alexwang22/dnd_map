if mouse_check_button_pressed(mb_left) {
	var clicked = collision_point(mouse_x, mouse_y, obj_marker, true, false);
	if clicked {
		global.selected = clicked;
		if !dragging {
			dragging = clicked;
		}
		x_orig = clicked.x;
		y_orig = clicked.y;
		mouse_x_orig = mouse_x;
		mouse_y_orig = mouse_y;
		instance_activate_layer(layer_get_id("EditMenu"));
		obj_edit_color_selector.selected_color = global.selected.color;
	}
	else {
		if !should_keep_selected {
			global.selected = noone;
			instance_deactivate_layer(layer_get_id("EditMenu"));
		}
		else {
			should_keep_selected = false;
		}
	}
}

if mouse_check_button_released(mb_left) {
	dragging = noone;
}

if mouse_check_button(mb_left) {
	if dragging {
		var dx = mouse_x - mouse_x_orig;
		var dy = mouse_y - mouse_y_orig;
		dragging.x = x_orig + dx;
		dragging.y = y_orig + dy;
	}
}