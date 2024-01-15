if (!destroy && enemy_hitboxID.hit_priority != 0) {
	with (enemy_hitboxID) {
	    var skull_center_x = floor(other.x + sprite_get_width(other.sprite_index)/2);
		var skull_center_y = floor(other.y - sprite_get_height(other.sprite_index)/2);
		var x_pos = x - ((x - skull_center_x)/2);
		var y_pos = y - ((y - skull_center_y)/2);
		
	    spawn_hit_fx(x_pos + (player_id.spr_dir * hit_effect_x), y_pos + hit_effect_y, hit_effect);
		sound_play(sound_effect);
		shake_camera(other.skull_strength * kb_value, 3 + round(kb_value/14));
	}
	sound_play(asset_get("mfx_coin"));
	explode = true;
}