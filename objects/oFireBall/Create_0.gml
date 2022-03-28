self.active = false;
self.size = 5;

self.attached_to = collision_point(x,y,oDynamic,true,false)
if (attached_to != noone) {
	self.distance = point_distance(attached_to.x,attached_to.y,x,y);
	self.dir = point_direction(attached_to.x,attached_to.y,x,y);
	self.dir_delta = attached_to.phy_rotation;
	self.active = true;
} else {
	instance_destroy(self);
}