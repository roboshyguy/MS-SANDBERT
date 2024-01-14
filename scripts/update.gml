//

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
            set_victory_portrait(sprite_get("portrait_tehend"));
            set_victory_sidebar(sprite_get("result_small_tehend"));
            break;
        
        case 7:
            set_victory_portrait(sprite_get("portrait_reiga"));
            set_victory_sidebar(sprite_get("result_small_reiga"));
            break;
        
        case 8:
            set_victory_portrait(sprite_get("portrait_finalhg"));
            set_victory_sidebar(sprite_get("result_small_finalhg"));
            break;
        
        case 9:
            set_victory_portrait(sprite_get("portrait_sandbert"));
            set_victory_sidebar(sprite_get("result_small_sandbert"));
            break;
        
        case 10:
            set_victory_portrait(sprite_get("portrait_renlira"));
            set_victory_sidebar(sprite_get("result_small_renlira"));
            break;
        
        case 11:
            set_victory_portrait(sprite_get("portrait_chmmr"));
            set_victory_sidebar(sprite_get("result_small_chmmr"));
            break;
        
        case 12:
            set_victory_portrait(sprite_get("portrait_hyu"));
            set_victory_sidebar(sprite_get("result_small_hyu"));
            break;
        
        case 13:
            set_victory_portrait(sprite_get("portrait_dakota"));
            set_victory_sidebar(sprite_get("result_small_dakota"));
            break;
        
        case 14:
            set_victory_portrait(sprite_get("portrait_infinite"));
            set_victory_sidebar(sprite_get("result_small_infinite"));
            break;
        
        case 15:
            set_victory_portrait(sprite_get("portrait_bar"));
            set_victory_sidebar(sprite_get("result_small_bar"));
            break;
    }
    // For next match, allow user to select portrait
    //var local_synced_var = selected_portrait
    //if (winner == player) {
    //    local_synced_var |= (winning_key << 16);
    //}
    //print_debug("synced_var = " + string(local_synced_var));
    //zset_synced_var(player, local_synced_var);
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