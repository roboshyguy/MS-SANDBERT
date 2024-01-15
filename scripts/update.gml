//

attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

if(state == PS_PARRY){
    if(state_timer == 1){
    	if(!hitpause){
        sound_play(sfx_parry);
    	}
    }
}

if(state == PS_CROUCH){
    if(state_timer == 4){
    	if(!hitpause){
        sound_play(sound_get("crouch"));
    	}
    }
}
if (get_player_stocks( player ) >= 3) {
    three_stock = true;
}else{
    three_stock = false;
}

//randomized portraits
if(get_gameplay_time() % 120 == 0){
    //victory theme
    music_rng = random_func(0, 10, true);
    switch(music_rng){
        default:
        set_victory_theme(sound_get("lipstickBow"));
        break;
        case 9:
        set_victory_theme(sound_get("fuck_you"));
        break;
    }
}

//randomized portraits
//print_debug("selected_portrait = " + string(selected_portrait));
if (detect_end_of_match())
{
    if (random_portrait) {
        selected_portrait = random_func(0, num_portrait_options - 1, true);
    }
    switch (selected_portrait) {
        case 0:
            set_victory_portrait(sprite_get("portrait_mudkid"));
            set_victory_sidebar(sprite_get("result_small_mudkid"));
            break;
        case 1:
            set_victory_portrait(sprite_get("portrait_vforce"));
            set_victory_sidebar(sprite_get("result_small_vforce"));
            break;
        case 2:
            set_victory_portrait(sprite_get("portrait_tdude"));
            set_victory_sidebar(sprite_get("result_small_tdude"));
            break;
        case 3:
            set_victory_portrait(sprite_get("portrait_sb"));
            set_victory_sidebar(sprite_get("result_small_sb"));
            break;
        case 4:
            set_victory_portrait(sprite_get("portrait_scaurai"));
            set_victory_sidebar(sprite_get("result_small_scaurai"));
            break;
        case 5:
            set_victory_portrait(sprite_get("portrait_dino"));
            set_victory_sidebar(sprite_get("result_small_dino"));
            break;
        case 6:
            set_victory_portrait(sprite_get("portrait_reiga"));
            set_victory_sidebar(sprite_get("result_small_reiga"));
            break;
        case 7:
            set_victory_portrait(sprite_get("portrait_finalhg"));
            set_victory_sidebar(sprite_get("result_small_finalhg"));
            break;
        case 8:
            set_victory_portrait(sprite_get("portrait_sandbert"));
            set_victory_sidebar(sprite_get("result_small_sandbert"));
            break;
        case 9:
            set_victory_portrait(sprite_get("portrait_renlira"));
            set_victory_sidebar(sprite_get("result_small_renlira"));
            break;
        case 10:
            set_victory_portrait(sprite_get("portrait_chmmr"));
            set_victory_sidebar(sprite_get("result_small_chmmr"));
            break;
        case 11:
            set_victory_portrait(sprite_get("portrait_hyu"));
            set_victory_sidebar(sprite_get("result_small_hyu"));
            break;
        case 12:
            set_victory_portrait(sprite_get("portrait_dakota"));
            set_victory_sidebar(sprite_get("result_small_dakota"));
            break;
        case 13:
            set_victory_portrait(sprite_get("portrait_infinite"));
            set_victory_sidebar(sprite_get("result_small_infinite"));
            break;
        case 14:
            set_victory_portrait(sprite_get("portrait_bar"));
            set_victory_sidebar(sprite_get("result_small_bar"));
            break;
        case 15:
            set_victory_portrait(sprite_get("portrait_jh"));
            set_victory_sidebar(sprite_get("result_small_jh"));
            break;
        case 16:
            set_victory_portrait(sprite_get("portrait_snappy"));
            set_victory_sidebar(sprite_get("result_small_snappy"));
            break;
    }
    
    if(three_stock){
        set_victory_portrait(sprite_get("portrait_irae"));
    }
    // For next match, allow user to select portrait
    //var local_synced_var = selected_portrait
    //if (winner == player) {
    //    local_synced_var |= (winning_key << 16);
    //}
    //print_debug("synced_var = " + string(local_synced_var));
    //zset_synced_var(player, local_synced_var);
    
    // If at least two players exist that are Mrs. Sandbert, do the smoochin' portrait
    var smooch_count = 0;
    with (oPlayer) {
        if (variable_instance_exists(self, "ITSA_ME_SANDBETTYO")) {
            smooch_count++;
        }
    }
    //print_debug("smooch_count = " + string(smooch_count));
    if (smooch_count >= 2) {
        set_victory_portrait(sprite_get("portrait_tehend"));
    }
}

// ravyn
if (state != PS_WALK_TURN && (!attacking || attack != AT_FTILT)) {
	prev_spr_dir = spr_dir;
}
if (attacking) {
	switch (attack) {
		// attack_update sometimes occurs too early in a frame, so i need to do it here
		case AT_FTILT:
			if (prev_spr_dir != spr_dir) {
				attack = AT_FSPECIAL_2;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				spr_dir = prev_spr_dir;
			}
		break;
		case AT_JAB:
			if (state_timer < 3) {
				var point_dir = right_down - left_down;
				if (point_dir != 0 && point_dir != spr_dir) {
					attack = AT_FSPECIAL_2;
					hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
					spr_dir *= 1;
				}
			}
		break;
		case AT_FSPECIAL:
		if (window == 10 || window == 12) {
			with (pHitBox) if (player_id == other && attack == other.attack && hbox_num > 2)  {
				for (i = 0; i <= 20; i++) {
				   can_hit[i] = false;
				}
				for (i = 0; i < array_length(other.grabbed); i++) {
					if (other.grabbed[@i]) {
						var enemy = other.grabbed[@i];
						can_hit[enemy.player] = 1;
					}
				}
			}
		}
		break;
		case AT_FSPECIAL_2:
		if (window == 2 && window_timer == 1) {
			scooted = false;
		}
		if (window == 2 && window_timer == 0) {
			if (skull != noone) {
				skull.fade = true;
			}
			skull = instance_create(x, y, "obj_article2");
		}
		break;
	}
}

if (!scooted && (!attacking || attack != AT_FSPECIAL_2 || (window == 1 && window_timer == 0))) {
	x -= 40 * spr_dir;
	scooted = true;
}

var x_offset = 28;
var y_offset = -8;
for (i = 0; i < array_length(grabbed); i++) {
	if (grabbed[@i]) {
		var enemy = grabbed[@i];
		with (enemy) {
	        set_state(PS_HITSTUN);
	        can_jump = false;
	        can_shield = false;
	        can_attack = false;
	        can_strong = false;
	        can_wall_jump = false;
	        can_fast_fall = false;
	    }
	   	enemy.hsp = 0;
		enemy.vsp = 0;
		enemy.hitpause = true;
		enemy.hitstop = 1;
		enemy.x = x + x_offset * spr_dir;
		enemy.y = y + y_offset;
		enemy.grabbed_invisible = true;
	}
}

var array_empty = true;
for (i = 0; i < array_length(grabbed); i++) {
	if (grabbed[@i] != noone) { 
		array_empty = false;
		var enemy = grabbed[@i];
		if (enemy.state_cat != SC_HITSTUN 
		|| enemy.last_player != player 
		|| enemy.last_attack != AT_FSPECIAL
		|| enemy.last_hbox_num <= 1
		|| enemy.last_hbox_num >= 5
		|| !attacking) {
			grabbed[@i] = noone;
		}
	}
}
if (array_empty) {
    grabbed = [];
}

// Base function courtesy of Mawral, updated to account for match timer
#define detect_end_of_match
var team_stocks = [0, 0, 0, 0];
var alive_teams = 0;
var i = 0;
with (oPlayer) {
    var this_team = get_player_team(player);
    team_stocks[this_team - 1] = max(team_stocks[this_team - 1], get_player_stocks(player));
}
repeat 4 { alive_teams += (team_stocks[i] > 0); i++; }
return (alive_teams <= 1) || (get_game_timer() <= 0);