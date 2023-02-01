if ds_list_size(fires) == 0 {
	draw_sprite_ext(sCoolThing, image_index, x, y,1,1,image_angle,c_white,1);
} else {
	draw_sprite_ext(sCoolThingAngry, image_index, x, y,1,1,image_angle,c_white,1);
}