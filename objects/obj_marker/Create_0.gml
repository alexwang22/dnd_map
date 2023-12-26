image_speed = 0;
image_xscale = global.grid_size / sprite_get_width(sprite_index);
image_yscale = global.grid_size / sprite_get_height(sprite_index);

uniColor = shader_get_uniform(shdr_color_change, "u_color");