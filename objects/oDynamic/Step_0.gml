if (mouse_still_down) {
	var dir = point_direction(x+d_mouse_x, y+d_mouse_y, mouse_x, mouse_y);
	var distance = point_distance(x+d_mouse_x, y+d_mouse_y, mouse_x, mouse_y);

	if (distance < slow_distance) {
		
		var dx = lengthdir_x(mouse_force/slow_distance*distance, dir);
		var dy = lengthdir_y(mouse_force/slow_distance*distance, dir);

		physics_apply_force(x+d_mouse_x, y+d_mouse_y, dx, dy);
	} else {
		var dx = lengthdir_x(mouse_force, dir);
		var dy = lengthdir_y(mouse_force, dir);

		physics_apply_force(x+d_mouse_x, y+d_mouse_y, dx, dy);
	}
}

if hp <= 0 {
	for (var i=0; i<ds_list_size(fires); i++) {
		instance_destroy(fires[| i]);
	}
	
	var i = item_controller.item_types[? current_type].cost*2;
	if i > 0 {
		audio_play_sound(soundCoin2, 0, false);
	}
	while 0 < i {
		var coin = instance_create_depth(x,y,-1,oCoin);
		if i > 50 {
			coin.coin_type = CoinType.ruby;
			i -= 50;
		} else if i > 10 {
			coin.coin_type = CoinType.gold;
			i -= 10;
		} else if i > 5 {
			coin.coin_type = CoinType.silver;
			i -= 5;
		} else {
			coin.coin_type = CoinType.copper;
			i -= 1;
		}
	}

	instance_destroy(self);
}