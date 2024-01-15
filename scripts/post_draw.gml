//post_draw.gml
var temp_color = c_white;

//Dibujando BOW para CROUCH
	if state == PS_CROUCH &&image_index ==3{
		shader_start();
		if state_timer <=15{
			draw_sprite_ext( sprite_get("bow"), 0, x- 42*spr_dir, y-26, -spr_dir , 1, 90 , c_white, 1);
		}else{
			draw_sprite_ext( sprite_get("bow"), 0, x-8*spr_dir + spr_dir*cos((state_timer)/120)*(-35), y-26, spr_dir , 1, (state_timer-15)*(-4)*spr_dir , c_white, 1);
		}
		shader_end();
	}
//
if (attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND && (window == 5 || window == 6)) {
    draw_sprite_ext( sprite_get("taunt_icons"), taunt_icon, x + 54 * spr_dir, y - 28, 2 * spr_dir, 2, 0, c_white, true );
}


if (gojo_var != 0){
	gojo_var -= 0.035;
	if(get_player_color(player) != 21){
	shader_start();
	}
	draw_sprite_ext(sprite_get("portrait_dino"), 0, gojo_x-170, gojo_y-210, 1, 1, 0, c_white, gojo_var);
	shader_end();
}

var fx_image_index2 = get_gameplay_time() / 10;
if(move_cooldown[AT_NSPECIAL] > 0){
    if draw_indicator{
	draw_sprite_ext(sprite_get("heart_hud"), fx_image_index2, x + 18, y - char_height - hud_offset - 36, 1, 1, 0, c_white, 1);
    }
}