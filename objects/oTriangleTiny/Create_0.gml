event_inherited();
current_type = types.triangleTiny;

running = false;
current_direction = 1
switch_direction_timer = 30+random(20);
run_speed = 20;

function add_fire(fire) {
	ds_list_add(fires, fire);
	
	if not running {
		running = true;
		phy_rotation = false;
		phy_fixed_rotation = true;
		alarm[0] = switch_direction_timer;
	}
}