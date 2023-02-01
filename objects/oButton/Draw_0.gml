if current_type != types.none {
	var type = item_controller.item_types[? current_type].sprite;
	var scale = sprite_get_width(sprite_index)/sprite_get_width(type);

	if sprite_get_width(type) < sprite_get_height(type) {
		scale = sprite_get_height(sprite_index)/sprite_get_height(type);
	}

	if locked {
		draw_sprite_ext(type, 0, x, y, scale, scale, 0, c_black, 1);
	} else {
		draw_sprite_ext(type, 0, x, y, scale, scale, 0, c_white, 1);
	}
}
draw_sprite(sButton, is_pressed, x, y);