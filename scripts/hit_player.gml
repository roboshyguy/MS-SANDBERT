// 

if(my_hitboxID.attack == AT_DAIR){
    if(my_hitboxID.hbox_num < 5){
        hit_player_obj.should_make_shockwave=false;
        hit_player_obj.x= (2*(hit_player_obj.x) + x +10*spr_dir)/3;   //a la mierda, soft command grab code
        if(vsp > 0){
            old_vsp = -2;
        }
    }else{
        sound_play(asset_get("sfx_sand_yell"), 0, noone, 1, 1.4); 
    }
}

if my_hitboxID.attack == AT_USTRONG and my_hitboxID.hbox_num == 1{
    switch(my_hitboxID.hbox_num){
        case 1:
        sound_play(asset_get("sfx_zap"));
        break;
        
        case 2:
        sound_play(asset_get("sfx_pom_cheer"));
        break;
        
        case 3:
        case 4:
        sound_play(asset_get("sfx_zetter_upb_hit"));
        break;
    }
}

if (my_hitboxID.attack == AT_FSPECIAL) {
    switch (my_hitboxID.hbox_num) {
        case 1:
        window = 5; // Hit!
        window_timer = 0;
        break;
        case 2:
        // The abyss calls for all; begger or relinquisher
        if (attacking && !was_parried && !hit_player_obj.clone && !hit_player_obj.grabbed_invisible && !hit_player_obj.super_armor && hit_player_obj.soft_armor <= 6 && !hit_player_obj.invincible && hit_player_obj.initial_invince == 0) {
            if (array_find_index(grabbed, hit_player_obj) == -1) {
                array_push(grabbed, hit_player_obj);
            }
            set_attack_value(attack, AG_NUM_WINDOWS, 15);
            window = 9;
            window_timer = 0;
        }
        break;
    }
}

