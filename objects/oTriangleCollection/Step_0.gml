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
	
	for (var i=0; i<10; i++) {
		var item = item_controller.item_types[? types.triangleTiny];
		instance_create_depth(x, y, 10, oTriangleTiny, {hp: item.hp});
	}

	instance_destroy(self);
}