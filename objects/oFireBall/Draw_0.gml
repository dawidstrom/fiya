if (attached_to and active) {
	var dx = lengthdir_x(distance,dir+dir_delta-attached_to.phy_rotation);
	var dy = lengthdir_y(distance,dir+dir_delta-attached_to.phy_rotation);

	//draw_point_color(attached_to.x+dx,attached_to.y+dy,c_green);
	if debug_controller.debugging {
		draw_circle_color(attached_to.x+dx,attached_to.y+dy,size,c_yellow,c_yellow,true);
	} else {
		part_particles_create(global.P_System, attached_to.x+dx, attached_to.y+dy, global.Particle1, 1);
	}
}