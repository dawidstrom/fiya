gui_shown = !gui_shown;

if gui_shown {
	current_index = 0;
	instance_activate_object(upgrade_containers[| current_index]);
	upgrade_containers[| current_index].activate();
	
	for (var i=0; i<ds_list_size(upgrade_tabs); i++) {
		instance_activate_object(upgrade_tabs[| i]);
	}
} else {
	upgrade_containers[| current_index].deactivate();
	instance_deactivate_object(upgrade_containers[| current_index]);
	
	for (var i=0; i<ds_list_size(upgrade_tabs); i++) {
		instance_deactivate_object(upgrade_tabs[| i]);
	}
}