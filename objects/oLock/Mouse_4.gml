if game_controller_.rewards >= cost {
	game_controller_.rewards -= cost;
	locked = false
	parent_container.activate();
	audio_play_sound(soundLockOpen, 0, false);
	instance_deactivate_object(self);
} else {
	path_start(pShake, 20, path_action_stop, false);
	audio_play_sound(soundLockShake, 0, false);
}