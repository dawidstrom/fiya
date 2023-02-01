draw_sprite(sprite_index, image_index, x, y);

if not can_spawn {
	var item = item_controller.item_types[? type];
	draw_healthbar(x,y,x+32,y+10,alarm[0]/item.spawn_time*100,c_red,0,1,0,true,true);
}