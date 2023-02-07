alarm[0] = popcorn_cooldown_ + random(popcorn_cooldown_variance_);

if ds_list_size(fires) > 0 {
	instance_create_depth(x,y,10, oPopcorn);
}
