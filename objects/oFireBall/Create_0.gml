self.active = false;
self.size = 5;

self.attached_to = collision_point(x,y,oDynamic,true,false)
if (attached_to != noone) {
	self.dx = x-self.attached_to.x;
	self.dy = y-self.attached_to.y;
	self.active = true;
} else {
	instance_destroy(self);
}