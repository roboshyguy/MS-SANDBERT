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
if(get_gameplay_time() % 90 == 0){
    portrait_rng = string(random_func(0, 14, true));
    set_victory_portrait(sprite_get(string("portrait" + portrait_rng)));
}