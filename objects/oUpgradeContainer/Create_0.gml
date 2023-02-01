// Should create buttons from upgrade list
// list_pages
// list_page[0] = [button1, button2, button3, etc]
// automatically calculate placement, assume 32pixel increments

offset_x = 32;
offset_y = 32;

placement_x = offset_x;
placement_y = offset_y;

var lock_x = x + sprite_width/2;
var lock_y = y + sprite_height/2;
lock = instance_create_depth(lock_x, lock_y, -1, oLock, { cost : lock_cost });
lock.parent_container = self;
instance_deactivate_object(lock);

item_controller = instance_find(oItemController, 0);

item_page = ds_list_create();

function place_button(button, type, button_index)
{
	var nx = x+placement_x+64;
	var ny = y+placement_y+64;
	var new_button = instance_create_depth(nx,ny,-1,button, { button_index: button_index});

	new_button.current_type = type;
	ds_list_add(item_page, new_button);
	placement_x += button.sprite_width + offset_x;

	if placement_x + offset_x >= sprite_width {
		placement_y += button.sprite_height + offset_y;
		placement_x = offset_x;
	}
	
	instance_deactivate_object(new_button);
}

function activate() {
	if lock.locked {
		instance_activate_object(lock);
	} else {
		for (var i=0; i<ds_list_size(item_page); i++) {
			instance_activate_object(item_page[| i]);
		}
	}
}

function deactivate() {
	if lock.locked {
		instance_deactivate_object(lock);
	} else {
		for (var i=0; i<ds_list_size(item_page); i++) {
			instance_deactivate_object(item_page[| i]);
		}
	}
}

function unlock_button(button_index) {
	if button_index < ds_list_size(item_page) {
		item_page[| button_index].locked = false;
	}
}