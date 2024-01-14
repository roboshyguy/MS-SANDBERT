//
if(attack == AT_NSPECIAL){
    switch(hbox_num){
    case 1:
    if(hitbox_timer == length){
            sound_play(asset_get("sfx_clairen_hit_weak"));
            spawn_hit_fx(x, y, 301); 
        }
        break;
        
    case 2:
    if(hitbox_timer == length){
            sound_play(asset_get("sfx_clairen_hit_med"));
            spawn_hit_fx(x, y, 301); 
        }    
    break;
    
    case 3:
    if(hitbox_timer == length){
            spawn_hit_fx(x, y, 301); 
        }    
    break;
    
    }
}