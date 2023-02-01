event_inherited();
current_type = types.rocket;

force = 0.0;

function add_fire(fire) {
	ds_list_add(fires, fire);
	force += 0.2;
}