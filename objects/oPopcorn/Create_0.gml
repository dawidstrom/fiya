self.mouse_still_down = false;
self.particleController = instance_find(oParticleController, 0);

fires = ds_list_create();

item_controller = instance_find(oItemController, 0);
current_type = types.popcorn;
hp = item_controller.item_types[? current_type].hp;

function add_fire(fire) {
	ds_list_add(fires, fire);
}
audio_play_sound(soundPopcornPop, 0, false);

physics_apply_force(x, y, random(40)-20, random(400)-280);
add_fire(instance_create_depth(x,y,-1,oFireBall));