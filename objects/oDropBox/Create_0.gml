type = types.none
index = -1;
can_spawn = false;

spawner = instance_find(oSpawner, 0);
item_controller = instance_find(oItemController, 0);
dropbar = instance_find(oDropBar, 0);

function set_type(new_type) {
	type = new_type;
	var item = item_controller.item_types[? type];
	alarm[0] = item.spawn_time;
}