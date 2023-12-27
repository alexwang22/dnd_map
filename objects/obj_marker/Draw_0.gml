shader_set(shdr_color_change);
var color_vec = [
	color_get_red(color) / 255,
	color_get_green(color) / 255,
	color_get_blue(color) / 255,
	1.0
];
shader_set_uniform_f_array(uniColor, color_vec);
draw_self();
shader_reset();