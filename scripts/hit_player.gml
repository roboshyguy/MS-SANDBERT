// 

if(my_hitboxID.attack == AT_DAIR){
    if(my_hitboxID.hbox_num < 5){
    if(vsp > 0){
        old_vsp = -1;
    }
    }else{
        sound_play(asset_get("sfx_sand_yell"));
    }
}