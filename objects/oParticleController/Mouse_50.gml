//part_particles_create(global.P_System, mouse_x, mouse_y, global.Particle1, 10);

if (self.mouse_down and not on_cooldown_) {
	//on_cooldown_ = true;
	var instance = instance_find(oUpgradeController, 0);
	
	if not instance.gui_shown {
		for (var i=0;i<4; i++) {
			for (var j=0;j<4;j++) {
				instance_create_depth(mouse_x-15+10*j,mouse_y-15+10*i,-1,oFireBall)
			}
		}
	}
}