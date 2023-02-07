if instance_number(oFireBall) > 0 and not fire_active {
	fire_active = true;
	audio_play_sound(soundFireCrackle, 0, true);
} else if instance_number(oFireBall) == 0 and fire_active {
	fire_active = false;
	audio_stop_sound(soundFireCrackle);
}

alarm[0] = fire_sound_cooldown;