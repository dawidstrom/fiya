var distance = point_distance(x,y,mouse_x,mouse_y);

if distance < absorb_distance {
	game_controller.coins += game_controller.coin_types[? coin_type].value;
	instance_destroy(self);
}

if distance < collect_distance {
	var dir = point_direction(x,y,mouse_x,mouse_y);
	phy_speed_x = cos(degtorad(dir))*collect_speed;
	phy_speed_y = -sin(degtorad(dir))*collect_speed;
}