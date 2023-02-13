var index = int64((1-hp/item_controller.item_types[? current_type].hp)*sprite_get_number(sprite_index));
draw_sprite_ext(sprite_index, index, x, y, 1, 1, -phy_rotation, c_white, 1);