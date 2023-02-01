alarm[0] = combo_check_cooldown_;

var item_types_ = ds_map_values_to_array(item_controller_.item_types);
var on_fire = ds_list_create();

if debug_controller_.debugging {
	show_debug_message("Checking combos... {0}", array_length(item_types_));
}

// Find all item types which are currently on fire.
for (var i=0; i<array_length(item_types_); i++) {
	if debug_controller_.debugging {
		show_debug_message("Looking for: {0}", item_types_[i].name);
	}

	for (var j = 0; j < instance_number(item_types_[i].object); ++j;)
	{
	    if ds_list_size(instance_find(item_types_[i].object, j).fires) > 0 {
			ds_list_add(on_fire, item_types_[i].type);
			break;
		}
	}
}

if debug_controller_.debugging {
	show_debug_message("on fire found: {0}", ds_list_size(on_fire));
}

function is_item_on_fire(item, on_fire) {
	for (var j=0; j<ds_list_size(on_fire); j++) {
		if item == on_fire[| j] {
			return true;
		}
	}
	return false;
}

function is_combo_active(combo, on_fire) {
	for (var i=0; i<array_length(combo.items); i++) {
		if not is_item_on_fire(combo.items[i], on_fire) {
			return false;
		}
	}
	return true;
}

if debug_controller_.debugging {
	show_debug_message("Possible combos: {0}", ds_list_size(combos_));
}

// Check all item combos which are active
for (var i=0; i<ds_list_size(combos_); i++) {
	if is_combo_active(combos_[| i], on_fire) {
		for (var j=0; j<combos_[| i].reward; j++) {
			instance_create_depth(spawner_.x, spawner_.y, 10, oReward);
		}
		ds_list_delete(combos_, i);
	}
}

if debug_controller_.debugging {
	show_debug_message("Done checking for combos");
}