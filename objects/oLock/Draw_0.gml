draw_sprite(sprite_index, image_index, x, y);

draw_sprite(sReward, 0, x+48, y+64);
draw_set_font(fLock);
draw_text_ext_color(x-font_get_size(fLock)+18, y+18, cost, 5, 300, c_black, c_black, c_black, c_black, 1);