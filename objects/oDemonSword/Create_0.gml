event_inherited();
current_type = types.demonSword;
on_fire = false;

function add_fire(fire) {
	ds_list_add(fires, fire);
	
	if not on_fire {
		on_fire = true;
	}
}