if game_controller_.rewards >= cost {
	game_controller_.rewards -= cost;
	locked = false
	parent_container.activate();
	instance_deactivate_object(self);
} else {
	path_start(pShake, 20, path_action_stop, false);
}