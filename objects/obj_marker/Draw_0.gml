shader_set(shdr_color_change);
shader_set_uniform_f_array(uniColor, color);
draw_self();
shader_reset();