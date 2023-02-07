event_inherited();
current_type = types.auroraMachine;
aurora = noone;

function add_fire(fire) {
	if ds_list_size(fires) == 0 {
		aurora = instance_create_depth(600,1300,-1,oShittyAurora);
	}
	ds_list_add(fires, fire);
}