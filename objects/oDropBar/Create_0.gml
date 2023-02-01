dropboxes = [noone, noone, noone, noone, noone];
offset = 64

function add_box(type) {
	for (var i=0; i<array_length(dropboxes); i++) {
		if dropboxes[i] == noone {
			var dropbox = instance_create_depth(x+offset+192*i,y-offset/2, -1, oDropBox);
			dropbox.index = i;
			dropbox.set_type(type);
			dropboxes[i] = dropbox;
			return true;
		}
	}
	return false;
}

function remove_box(index) {
	dropboxes[index] = noone;
}