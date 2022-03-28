if (mouse_still_down) {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var distance = point_distance(x, y, mouse_x, mouse_y);

	if (distance < slow_distance) {
		var dx = lengthdir_x(mouse_force/slow_distance*distance, dir);
		var dy = lengthdir_y(mouse_force/slow_distance*distance, dir);

		physics_apply_force(x, y, dx, dy);
	} else {
		var dx = lengthdir_x(mouse_force, dir);
		var dy = lengthdir_y(mouse_force, dir);

		physics_apply_force(x, y, dx, dy);
	}
}