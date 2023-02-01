active_sprite = 0;
if mouse_down {
	active_sprite = 2;
} else if mouse_hover {
	active_sprite = 1;
}

draw_set_font(fHUD);
draw_sprite(sprite_index, active_sprite, x, y);
draw_text(x+sprite_width/2-3, y+20, index);