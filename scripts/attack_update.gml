//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
		
	case AT_UTILT:
	hud_offset = 40;
	break;
		
	case AT_DTILT:
	
		hud_offset = 20;
		if(has_hit){
			can_jump = true;
		}
		
	//reset_stomps
	if(window == 1 && window_timer == 1){
	times_stomped = 0;	
	set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 5);
	set_window_value(AT_DTILT, 9, AG_WINDOW_GOTO, 10);
	}
	
	//inputs
	if(!was_parried){
	if(window == 4 or window == 3){
		if(times_stomped < 4){
		if(attack_pressed){
			clear_button_buffer( PC_ATTACK_PRESSED );
			set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 6);
			}	
		}
	}if(window == 9 or window == 8){
		if(times_stomped < 4){
		if(attack_pressed){
			clear_button_buffer( PC_ATTACK_PRESSED );
			set_window_value(AT_DTILT, 9, AG_WINDOW_GOTO, 11);
			}	
		}
	}
	}
	//reset values
	if(window == 6 or window == 11){
	set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 5);
	set_window_value(AT_DTILT, 9, AG_WINDOW_GOTO, 10);		
	}
	
	if(window == 2 && window_time_is(get_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH)-1)){
		times_stomped += 1;
		sound_play(asset_get("sfx_zetter_downb"));
	}if(window == 7 && window_time_is(get_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH)-1)){
		times_stomped += 1;	
		sound_play(asset_get("sfx_zetter_downb"));
	}
	
	//reset to beginning
	if(window == 11 && window_time_is(get_window_value(AT_DTILT, 11, AG_WINDOW_LENGTH)-1)){
		attack_end();
		window = 2;
		window_timer = 0;
	}
	
	
	
	//go into endlag
	if(window == 5 && window_time_is((get_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH)*(has_hit?1:1.5))-1)){
		attack_end();
		if(!was_parried){
		set_state(PS_IDLE);
		}else{
		set_state(PS_PRATFALL);	
		}
	}if(window == 10 && window_time_is((get_window_value(AT_DTILT, 10, AG_WINDOW_LENGTH)*(has_hit?1:1.5))-1)){
		attack_end();
		if(!was_parried){
		set_state(PS_IDLE);
		}else{
		set_state(PS_PRATFALL);	
		}
	}
	break;
	
	case AT_UAIR:
	if(window == 2){
		hud_offset = 100;
	}
	break;
	
	case AT_FSTRONG:
		hud_offset = 20;
	if(window == 2){
		switch(window_timer){
			case 1:
			sound_play(asset_get("sfx_boss_laser"));
			break;
		}
	}
	case AT_NAIR:
	if (!was_parried && !hitpause && !fast_falling && window_timer == 1){
		switch (window){
			case 2:
			vsp = -2;
			break;
			case 4:
			vsp = -4;
			break;
			case 6:
			vsp = -4;
			break;
		}
	}
	with (pHitBox) if (player_id == other && hbox_num >= 17 && hbox_num <= 19 && attack == AT_NAIR){
		if (!player_id.free){
			destroyed = true;
		}
	}
	if (window == 7 && window_timer == 12 && !hitpause){
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
	if (window == 10 && window_timer == 0 && !hitpause){
		sound_play(asset_get("sfx_zetter_downb"));
	}
	if (window > 7 && window <= 11){
		set_attack_value(AT_NAIR, AG_CATEGORY, 2);
		set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, false);
	} else {
		reset_attack_value(AT_NAIR, AG_CATEGORY);
		reset_attack_value(AT_NAIR, AG_HAS_LANDING_LAG);
	}
	break;
}



#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion