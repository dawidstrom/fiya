if ds_list_size(fires) == 0 {
	draw_sprite_ext(sTriangleTiny, image_index, x, y, 1, 1, image_angle, c_white, 1);
} else {
	draw_sprite_ext(sTriangleScreamTiny, image_index*20, x, y, current_direction, 1, image_angle, c_white, 1);
}