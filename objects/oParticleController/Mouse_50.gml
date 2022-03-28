//part_particles_create(global.P_System, mouse_x, mouse_y, global.Particle1, 10);

if (self.mouse_down) {
	for (var i=0;i<3; i++) {
		for (var j=0;j<3;j++) {
			instance_create_depth(mouse_x-15+10*j,mouse_y-15+10*i,-1,oFireBall)
		}
	}
}