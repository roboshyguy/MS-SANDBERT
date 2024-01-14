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
    portrait_rng = random_func(0, 15, true);
    switch(portrait_rng){
        case 0:
        set_victory_portrait(sprite_get("portrait_mudkid"));
        break;
        
        case 1:
        set_victory_portrait(sprite_get("portrait_vforce"));
        break;
        
        case 2:
        set_victory_portrait(sprite_get("portrait_tdude"));
        break;
        
        case 3:
        set_victory_portrait(sprite_get("portrait_sb"));
        break;
        
        case 4:
        set_victory_portrait(sprite_get("portrait_scaurai"));
        break;
        
        case 5:
        set_victory_portrait(sprite_get("portrait_dino"));
        break;
        
        case 6:
        set_victory_portrait(sprite_get("portrait_tehend"));
        break;
        
        case 7:
        set_victory_portrait(sprite_get("portrait_reiga"));
        break;
        
        case 8:
        set_victory_portrait(sprite_get("portrait_finalhg"));
        break;
        
        case 9:
        set_victory_portrait(sprite_get("portrait_sandbert"));
        break;
        
        case 10:
        set_victory_portrait(sprite_get("portrait_renlira"));
        break;
        
        case 11:
        set_victory_portrait(sprite_get("portrait_chmmr"));
        break;
        
        case 12:
        set_victory_portrait(sprite_get("portrait_hyu"));
        break;
        
        case 13:
        set_victory_portrait(sprite_get("portrait_dakota"));
        break;
        
        case 14:
        set_victory_portrait(sprite_get("portrait_irae"));
        break;
    }
}