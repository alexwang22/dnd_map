var marker_layer = layer_get_id("Markers");
instance_create_layer(mouse_x, mouse_y, marker_layer, obj_marker, {image_index : 1, color : obj_color_selector.selected_color});