if (attached_to and active) {
	var dx = lengthdir_x(distance,dir+dir_delta-attached_to.phy_rotation);
	var dy = lengthdir_y(distance,dir+dir_delta-attached_to.phy_rotation);
	draw_circle_color(attached_to.x+dx,attached_to.y+dy,size,c_red,c_red,true);
}