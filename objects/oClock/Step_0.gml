event_inherited();
if ds_list_size(fires) > 0 {
	small_arm_rotation -= arm_rotation_speed/12;
	big_arm_rotation -= arm_rotation_speed;
	
	arm_rotation_speed *= 1.01;
	show_debug_message("{0}", arm_rotation_speed);
	
	if arm_rotation_speed > 80 {
		show_debug_message("hej");
		physics_apply_force(x,y,0,-9);
	}
}