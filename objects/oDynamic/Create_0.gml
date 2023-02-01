self.mouse_still_down = false;
self.particleController = instance_find(oParticleController, 0);

fires = ds_list_create();

item_controller = instance_find(oItemController, 0);
current_type = types.none;

function add_fire(fire) {
	ds_list_add(fires, fire);
}