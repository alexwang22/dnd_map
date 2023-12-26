var image = get_open_filename("image|*.png;*.jpg;*.jpeg;*.gif", "");
if image != "" {
	var spr_id = sprite_add(image, 1, false, false, 0, 0);
	obj_bg_drawer.bg_spr = spr_id;
	obj_bg_zoom_slider.value = 0;
}