if can_spawn {
	var item = item_controller.item_types[? type];
	var new_item = instance_create_depth(spawner.x, spawner.y, 10, item.object, {hp: item.hp});

	dropbar.remove_box(index);
	instance_destroy(self);
}