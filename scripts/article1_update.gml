depth = 31;

if(player_id.release_gojo){
    if(player_id.bg_darken_var > 0){
    player_id.bg_darken_var -= 0.01;
    }
    
    if(player_id.bg_darken_var < 0 or player_id.bg_darken_var == 0){
    player_id.bg_darken_var = 0;   
    player_id.release_gojo = false;
    }
}