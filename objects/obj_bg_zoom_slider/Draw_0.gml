draw_self();
draw_sprite(spr_slider_button, 0, x + sprite_width * (value - min_value) / (max_value - min_value), y);