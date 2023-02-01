is_pressed = true;

var item = item_controller.item_types[? current_type];
if not locked and game_controller.coins - item.cost >= 0 {
	if drop_bar.add_box(current_type) {
		game_controller.coins -= item.cost;
		upgrade_controller.unlock_next_button(button_index);
	}
} else {
	path_start(pShake, 20, path_action_stop, false);
}