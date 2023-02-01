game_controller_ = instance_find(oGameController, 0);
item_controller_ = instance_find(oItemController, 0);
spawner_ = instance_find(oSpawner, 0);
debug_controller_ = instance_find(oDebugController, 0);

combos_ = ds_list_create();
combo_check_cooldown_ = 200;

function create_combo(_description, _items, _reward) constructor {
	description = _description;
	items = _items;
	reward = _reward;
}


ds_list_add(combos_, new create_combo("Boxes", [types.box, types.rectangle], 1));
ds_list_add(combos_, new create_combo("Movie time!", [types.corn, types.coolThing], 2));
alarm[0] = combo_check_cooldown_;