draw_set_font(fHUD);
draw_sprite(sprite_index, image_index, x, y);

draw_sprite(sGoldCoin, 0, x, y);
draw_sprite(sRewardIcon, 0, x, y+32+2);
if game_controller != noone {
	draw_text(x+32,y-12, game_controller.coins);
	draw_text(x+32,y-12+32+2, game_controller.rewards);
}