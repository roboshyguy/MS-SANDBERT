var currAlt = get_player_color(player);

switch (currAlt)
{
	// nyaw alt
	case 21:
		coins_earned = 999999;
		coins_drawn = 0;
	
		var portrait = get_char_info(player, INFO_PORTRAIT); // DAN WHY
		FlagPart(make_colour_rgb(85, 205, 252), portrait, 1, 0); // mayablue
		FlagPart(make_colour_rgb(247, 168, 223), portrait, 3/5, 1/5); // pink
		FlagPart(c_white, portrait, 1/5, 2/5);
		gpu_set_fog(0, c_white, 0, 0);

		prepare_shader()
		shader_start();
		draw_sprite_ext(portrait, 0, portrait_x, portrait_y, 2, 2, 0, c_white, 1);
		shader_end();
		break;
}

#define FlagPart(_colour, _selected_css_sprite, _heightRatio, _xOffsetRatio)
{	
	gpu_set_fog(1, _colour, 0, 1);
	draw_sprite_part_ext(_selected_css_sprite, 0, 0, 350*_xOffsetRatio, 350, 350*_heightRatio, portrait_x, portrait_y+(350*_xOffsetRatio)*2, 2, 2, c_white, 1);
}

#define prepare_shader()
{
	static_colorB = colorB;
	static_colorO = colorO;
	static_colorT = colorT;
	static_colorI = colorI;
	init_shader();
}