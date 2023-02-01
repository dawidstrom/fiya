for (var i=0; i<ds_list_size(fires); i++) {
	instance_destroy(fires[| i]);
}

instance_destroy(self);