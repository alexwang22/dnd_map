if instance_exists(global.selected) {
	var scale = (global.grid_size + 10) / sprite_get_width(spr_selected);
	draw_sprite_ext(spr_selected, 0, global.selected.x, global.selected.y, scale, scale, 0, c_white, 1);
}