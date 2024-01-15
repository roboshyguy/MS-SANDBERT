//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		hud_offset = 50;
		//
		can_move = false;
		can_wall_jump = true;
		if has_hit{
			can_fast_fall=true;
		} else{
			can_fast_fall = false;
		}
		break;
		
	case AT_JAB:
	if(window == 1 && window_time_is(get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)-1)){
	sound_play(asset_get("sfx_syl_nspecial"));	
	}
	
	if(window == 4 && window_time_is(get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH)-1)){
	sound_play(asset_get("sfx_ell_fist_explode"));	
	}
	break;
		
	case AT_FTILT:
	if(window == 1 && window_time_is(get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH))){
	sound_play(sound_get("sfx_snap"));	
	var _snap = spawn_hit_fx( x + spr_dir * 110, y - 40, 305 );
	}
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
		if(is_attack_pressed(DIR_ANY) or down_strong_pressed){
			clear_button_buffer( PC_ATTACK_PRESSED );
			set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 6);
			}	
		}
	}if(window == 9 or window == 8){
		if(times_stomped < 4){
		if(is_attack_pressed(DIR_ANY) or down_strong_pressed){
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
	
    case AT_NAIR:
    if (!was_parried && !hitpause && !fast_falling && window_timer == 1){
        switch (window){
            case 2:
            vsp = -2;
            break;
            case 4:
            vsp = -4;
            break;
            case 8:
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
			FireLaser = sound_play(asset_get("sfx_boss_laser"));
			break;
		}
	}
	break;
	
	case AT_DSTRONG:
		hud_offset = 20;
	if(window == 2){
		switch(window_timer){
			case 1:
			sound_play(asset_get("sfx_abyss_spawn"));
			sound_play(asset_get("sfx_abyss_hazard_burst"));
			sound_play(asset_get("sfx_ori_dtilt_perform"));
			break;
			
			case 9:
			sound_play(asset_get("sfx_swipe_medium2"));
			break;
		}
	}
	break;
	
	case AT_USTRONG:
	can_wall_jump = true;
	can_fast_fall = false;

	if window == 2{
		set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -9 -(strong_charge/40));
	}
	if was_parried == true{
		window = 6;
	}
	if (window == 3) or (window == 4){
		hud_offset = 65
	}
	if window == 5{
		hud_offset = 120
	}
	if window == 6{
		hud_offset = 70
		set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
	}
	break;
	
	case AT_FAIR:
	if(window == 1 && window_time_is(10)){
	sound_play(asset_get("sfx_bird_screech"), 0, noone, 0.75); 
	}
	
	if(window != 3){
		can_fast_fall = false;
	}else{
		can_fast_fall = true;	
	}
	break;
	
	case AT_BAIR:
	if(has_hit){
		if(window == 4){
			can_jump = true;
			can_attack = true;
			can_strong = true;
			can_special = true;
			can_shield = true;
		}
	}
	
	if(window == 4){
	can_wall_jump = true;	
	}
	break;
	
	case AT_NAIR:
	if (window == 6 && window_timer >= 0 && has_hit && !was_parried && (attack_pressed || attack_down)){
		window = 8;
		window_timer = 0;
	}
	if (!was_parried && !hitpause && !fast_falling && window_timer == 1){
		switch (window){
			case 2:
			vsp = -2;
			break;
			case 4:
			vsp = -4;
			break;
			case 8:
			vsp = -4;
			break;
		}
	}
	with (pHitBox){
		if (player_id == other && attack == AT_NAIR){
			if (hbox_num >= 17 && hbox_num <= 19 && !player_id.free){
				destroyed = true;
			} if (hbox_num >= 3 && hbox_num <= 8 && player_id.window > 6){
				destroyed = true;
			}
		}
	}
	if (window == 9 && window_timer == 14 && !hitpause){
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
	if (window == 12 && window_timer == 0 && !hitpause){
		sound_play(asset_get("sfx_zetter_downb"));
	}
	if (window == 10 || window == 11){
		can_fast_fall = false;
	}
	if (window == 11){
		nair_loop_timer++;
		if (nair_loop_timer >= 12 && !was_parried && !hitpause){
			can_shield = true;
			can_jump = true;
		}
	} else {
		can_shield = false;
		can_jump = false;
		nair_loop_timer = 0;
	}
	if (window > 9 && window <= 13){
		set_attack_value(AT_NAIR, AG_CATEGORY, 2);
		set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, false);
	} else {
		reset_attack_value(AT_NAIR, AG_CATEGORY);
		reset_attack_value(AT_NAIR, AG_HAS_LANDING_LAG);
	}
	break;
	
	case AT_DSPECIAL:
//hold
    if (window == 3){
        if (window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) - 1){
            if (special_down && !was_parried){
                window_timer = get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH) - 2;
            }
        }
    }
    
    //absorb
    if (window == 2 || window == 3){

        can_fast_fall = false;
        
        //Why Dose She Floot
        if (window == 2){
            if (window_timer == 1){
                if (!hitpause && !hitstop){
                    if (vsp > 0){
                        vsp = 0;
                    }
                }
            }
        }
        
        //jc
        if (has_hit && !was_parried){
            can_jump = true;
        }
        
        //fall slower
        if (vsp > 6){
            vsp = 6;
        }
        
        with (asset_get("pHitBox")) {
        	        	
        
        	            //If hitbox is: not the player's, is a projectile, and is in range of 60
        	            if (player != other.player && type == 2 && ((point_distance(x, y, other.x + 65 * other.spr_dir, other.y - 30) < 30) || (point_distance(x, y, other.x + 65 * other.spr_dir, other.y + 30) < 30))) {
        
        	            	var hbox_dmg = damage;
        	            	var hbox = self;
        	            	
        	                with (other) {
        	                    //absorb
        	                    if (hbox.can_hit[player] && hbox.damage > 0 && hbox.hit_priority > 0 && !hbox.plasma_safe && hbox.player != player){
        	                    	
        	                    	//sfx/vfx
        	                    	sound_play(asset_get("sfx_blow_medium2"));
        	                    	sound_play(asset_get("sfx_abyss_despawn"));
        	                    	spawn_hit_fx( hbox.x + 0*hbox.spr_dir, hbox.y, 301 );
        	                    	hbox.destroyed = true;
        	                    	
        	                    	//add to meter
        	                    	if (dspecial_absorb_count < 3){
            	                    	dspecial_absorb_count += 1;
        	                    	}
        	                    	
        	                    	if (dspecial_absorb_count == 3){
        	                    	    window = 4;
        	                    	    window_timer = 0;
        	                    	    sound_play(asset_get("sfx_poison_hit_weak"));
        	                    	    sound_play(asset_get("sfx_may_arc_cointoss"));
        	                    	}
        	                    	
        	                    	//change dspecial stats
        	                    	var dspec_damage = get_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
        	                    	var dspec_bkb = get_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK);
        	                    	var dspec_kbs = get_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING);
        	                    	
        	                    	var hbox_damage = hbox.damage;
        	                    	var hbox_bkb = hbox.kb_value;
        	                    	var hbox_kbs = hbox.kb_scale;
        	                    	
        	                        set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, dspec_damage + round(hbox_damage/dspecial_damage_multiplier));
                                    set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, dspec_bkb + hbox_bkb/dspecial_bkb_multiplier);
                                    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, dspec_kbs + hbox_kbs/dspecial_kbs_multiplier);

        	                        //set invincibility if not already invincible
        	                        if (!invincible){
        		                        invincible = 1;
        								invince_time = 5;	
        	                        }
        							
        							//hitpause stuff
        							other.hitpause = 1;
        							other.hitstop = 3;
        							other.hitstop_full = 3;
        							other.old_vsp = other.vsp;
        							other.old_hsp = other.hsp;
        	                    }
        	                }
        	            }
        	        }
        }
	break;
	
	case AT_DSPECIAL_2:
	//remove charge
    if (window == 1){
        if (window_timer == get_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH)){
            if (!hitpause && !hitstop){
                sound_play(asset_get("mfx_star"));
                sound_play(asset_get("sfx_sand_yell"), false, noone, 1, 1.5);
            }
        }
    }
    
    if (window == 2){
        if (window_timer == 1){
            if (!hitpause && !hitstop){
                create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y) - 0); //create hitbox
                
                dspecial_absorb_count = 0;
                reset_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
                reset_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING);
            }
        }
    }
	break;
	
	case AT_USPECIAL:
	trigger_wavebounce();
	hud_offset = 50;
	can_move = true;
	if(window != 3){
	can_fast_fall = false;
	can_wall_jump = true;
	}else{
	can_fast_fall = true;
	can_wall_jump = true;		
	}
	break;
	
	case AT_NSPECIAL:
	trigger_wavebounce();
	if(window == 1 && window_timer == 1){
		nspecial_charge = 0;
		nspec_fully_charged = false;
		bg_darken_var = 0;
		gojo_var = 0;
	}
	
	//charge
	if((window == 2 or window == 3 or window == 4) && window_timer == 2){
		if(nspecial_charge == 0){
		sound_play(asset_get("sfx_abyss_hex_curse"));
		}if(nspecial_charge == 2){
			spawn_hit_fx(x, y-30, 301);
		sound_play(asset_get("sfx_frog_dstrong"));
		}if(nspecial_charge == 4){
			spawn_hit_fx(x, y-30, 304);
		sound_play(asset_get("sfx_frog_dspecial_swallow"));
		}
		//print(nspecial_charge);
		if(nspecial_charge < 5){
			nspecial_charge += 1;
		}
	}
	
	if(window == 2 && window_time_is(get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)-1)){
		if(nspecial_charge < 2){
			window_timer = 1;
		}
	}
	if(window == 3 && window_time_is(get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)-1)){
		if(nspecial_charge < 4){
			window_timer = 1;
		}
	}
	
	//release
	if(window == 2 or window == 3 or window == 4){
		if(!special_down){
			window = 5;
			window_timer = 0;
		}
	}
	if(!nspec_fully_charged){
		if(window == 4 && window_time_is(1)){
		nspec_fully_charged = true;
			if(bg_article == 0){
			bg_article = instance_create(x, y-48, ("obj_article1"));
			}
		}
	}
	
	if(window == 4 && nspec_fully_charged){
		release_gojo = false;
		bg_darken_var += 0.01;
		
		if(bg_darken_var >= 0.7){
			release_gojo = true;
			gojo_var = 1;
			gojo_x = x;
			gojo_y = y;
			window = 5;
			window_timer = 0;			
		}
		if(!special_down){
			release_gojo = true;
			window = 5;
			window_timer = 0;
		}
		
		if(window_time_is(get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH)-1)){
			if(special_down){
				//print("test");
				window_timer = 0;
			}
		}
	}
	
	//create hitbox
	if(window == 5 && window_time_is(4)){
		sound_play(asset_get("sfx_abyss_hazard_burst"));
		sound_play(sound_get("sfx_snap"));
		spawn_hit_fx(x + spr_dir * 55, y-35, 301);
		if(nspecial_charge < 3){
			move_cooldown[AT_NSPECIAL] = 60;
			create_hitbox(AT_NSPECIAL, 1, x + spr_dir * 55, y - 35);
		}if(nspecial_charge >= 3 && nspecial_charge < 5){
			move_cooldown[AT_NSPECIAL] = 120;
			create_hitbox(AT_NSPECIAL, 2, x + spr_dir * 55, y - 35);			
		}if(nspecial_charge >= 5){
			move_cooldown[AT_NSPECIAL] = 120;
			create_hitbox(AT_NSPECIAL, 3, x + spr_dir * 55, y - 35);			
		}
	}
	break;

	case AT_FSPECIAL:
	// ravyn
	var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	var launch_frame = 8;
	can_fast_fall = false;
	if (!hitpause) {
		switch (window) {
			case 1:
				if (window_timer == window_length) {
					if (!special_down) {
						window = 6;
						window_timer = 0;
						set_attack_value(attack, AG_NUM_WINDOWS, 8);
					}
				}
			break;
			case 2:
			hsp = 0;
			vsp = min(vsp, -fist_hop_speed);
			if (window_timer == window_length) {
				hsp = fist_launch_speed * spr_dir;
				vsp = min(vsp, 0);
			}
			break;
			case 3:
				vsp = min(vsp, 0);
			break;
			break;
			case 5:
			if (window_timer == 1) {
				destroy_hitboxes()
				hsp = -fist_bounceback_speed[0] * spr_dir;
				vsp = -fist_bounceback_speed[1];
			}
			break;
			case 6:
			if (window_timer != window_length) {
				break;
			}
			case 7:
				hsp = grab_launch_speed * spr_dir;
				vsp = min(vsp, 0);
			break;
			case 9:
			if (window_timer == 1) {
				destroy_hitboxes();
			}
			case 10:
			case 11:
			case 12:
			case 13:
			set_attack_value(attack, AG_OFF_LEDGE, true);
			fall_through = true;
			if (window != 13 || window_timer < window_length) {
				if (up_down) {
					vsp = lerp(vsp, -grab_float_max_speed[0], grab_float_accel[0])
				} else if (down_down) {
					vsp = lerp(vsp, grab_float_max_speed[1], grab_float_accel[1]);
				} else {
					vsp = lerp(vsp, 0, grab_float_deccel[0]);
				}
				
				if (left_down) {
					hsp = lerp(vsp, -grab_float_max_speed[2], grab_float_accel[2]);
				} else if (right_down) {
					hsp = lerp(vsp, grab_float_max_speed[2], grab_float_accel[2]);
				} else {
					hsp = lerp(vsp, 0, grab_float_deccel[1]);
				}
				
			} else {
				// Groundedness check due to attack_invisible being weird
				if (free) {
					set_hitbox_value(attack, 6, HG_WINDOW, 0); // Aerial Throw
				} else {
					set_hitbox_value(attack, 5, HG_WINDOW, 0); // Grounded Throw
				}
			}
			break;
		}
	}
	
	break;

	case AT_TAUNT:
	if(window == 1){
		switch(window_timer){
			case 1:
			sound_play(asset_get("mfx_star"));
			spawn_hit_fx(x, y-30, 301);
			break;
			
			case 18:
			sound_play(asset_get("mfx_notice"));
			spawn_hit_fx(x, y-30, 301);
			break;
			
			case 36:
			sound_play(asset_get("sfx_bubblepop"));
			spawn_hit_fx(x, y-30, 301);
			break;
			
			case 54:
			sound_play(asset_get("mfx_chat_received"));
			spawn_hit_fx(x, y-30, 301);
			break;
			
			case 72:
			sound_play(asset_get("mfx_unstar"));
			spawn_hit_fx(x, y-30, 301);
			break;
		}
	}
	break;
	
    case AT_TAUNT_2:
        if (window == 3 && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) && bag_taunt) {
                bag_taunt--;
                window = 2;
                window_timer = 0;
        }
        if (window == 6 && taunt_down) {
            window_timer = 14;
        }
    break;
    
    case AT_EXTRA_2:
    
    if taunt_down && window = 3{
    
    if window_timer > 23{
        window_timer = 23;
    }    
        
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
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}
