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