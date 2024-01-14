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

