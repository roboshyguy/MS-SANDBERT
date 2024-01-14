var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);
switch (playerAlt)
{
	// nyaw alt
	case 20:
	{
		AltOpacity(1, 0, playerAlt);
	}
	break;
}

#define AltColour(_index, _colour)
{
	var temp_r = color_get_red(_colour);
	var temp_g = color_get_green(_colour);
	var temp_b = color_get_blue(_colour);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, 1);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, 1);
}

#define AltOpacity(_index, _opacity, _currentAlt)
{ 
	var temp_r = get_color_profile_slot_r(_currentAlt, _index);
	var temp_g = get_color_profile_slot_g(_currentAlt, _index);
	var temp_b = get_color_profile_slot_b(_currentAlt, _index);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, _opacity);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, _opacity);
}