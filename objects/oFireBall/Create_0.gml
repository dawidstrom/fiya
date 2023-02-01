active = false;
size = 7;
offset = 14;

attached_to = collision_point(x,y,oDynamic,true,false)
//var too_close_to_fire = collision_circle(x,y,size,oFireBall,true,true);

var too_close_to_fire = false; //instance_nearest(x,y,oFireBall);

debug_controller = instance_find(oDebugController,0);

// Don't spawn if too close to another fire.
for (var i = 0; i < instance_number(oFireBall); ++i;)
{
    var tmp = instance_find(oFireBall,i);
	
	if (tmp.attached_to and tmp.active) {
		var dx = lengthdir_x(tmp.distance,tmp.dir+tmp.dir_delta-tmp.attached_to.phy_rotation);
		var dy = lengthdir_y(tmp.distance,tmp.dir+tmp.dir_delta-tmp.attached_to.phy_rotation);

		if id != tmp and point_distance(x,y,tmp.x+dx,tmp.y+dy) < size {
			too_close_to_fire = true;
			break;
		}
	}
}

// Only spawn if there is an item to attach to and not too close to another fire
if (attached_to != noone and not too_close_to_fire) {
	distance = point_distance(attached_to.x,attached_to.y,x,y);
	dir = point_direction(attached_to.x,attached_to.y,x,y);
	dir_delta = attached_to.phy_rotation;
	active = true;
	alarm[0] = 60;
	alarm[1] = 60;
	
	attached_to.add_fire(self);
} else {
	//instance_create_depth(x,y,-1,oAttempt);
	instance_destroy(self);
}