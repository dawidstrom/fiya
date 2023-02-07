upgrade_containers = ds_list_create();
upgrade_tabs = ds_list_create();

buttons = 0;
current_capacity = -1;

gui_shown = false;
current_index = 0;
page_capacity = 15;

unlocked_button_index = -1; // -1 = None unlocked

function add_new_page_if_necessary(index) {
	if buttons > current_capacity {
		ds_list_add(upgrade_containers, instance_create_depth(x, y, 0, oUpgradeContainer, { lock_cost : index }));
		if ds_list_size(upgrade_containers) == 1 {
			upgrade_containers[| 0].lock.locked = false;
		}
		var new_tab = instance_create_depth(x+sprite_get_width(sUpgradeContainer), y+64*ds_list_size(upgrade_tabs), 1, oUpgradeTab, { index : ds_list_size(upgrade_tabs)});

		ds_list_add(upgrade_tabs, new_tab);
		instance_deactivate_object(new_tab);
		
		current_capacity += page_capacity;
	}
}

function add_button(type) {
	var index = int64(buttons / page_capacity);
	
	add_new_page_if_necessary(index);
	instance_activate_object(upgrade_containers[| index]);

	upgrade_containers[| index].place_button(oButton, type, buttons);
	buttons += 1;

	if index > 0 {
		upgrade_containers[| index].deactivate();
	}

	instance_deactivate_object(upgrade_containers[| index]);
}

function set_upgrade_page(page) {
	upgrade_containers[| current_index].deactivate();
	instance_deactivate_object(upgrade_containers[| current_index]);

	current_index = page;
	upgrade_containers[| current_index].activate();
	instance_activate_object(upgrade_containers[| current_index]);
}

add_button(types.triangleCollection);
add_button(types.box);
add_button(types.ball);
add_button(types.triangle);
add_button(types.rectangle);
add_button(types.coolThing);
add_button(types.corn);
add_button(types.demonSword);
add_button(types.rocket);
add_button(types.bomb);
add_button(types.clock);


for (var i=0; i<10; i++) {
	//add_button(types.triangle);
}

function unlock_next_button(button_index) {
	if button_index == unlocked_button_index and unlocked_button_index < buttons {
		var page_index = int64((unlocked_button_index+1)/page_capacity);
		upgrade_containers[| page_index].unlock_button((button_index+1)%page_capacity);
		unlocked_button_index++;
	}
}

unlock_next_button(-1); // unlock first button