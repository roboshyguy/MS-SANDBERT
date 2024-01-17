// When you when you when you get hit

if prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR{
    if attack == AT_FSTRONG{
        sound_stop(FireLaser);
    }
}

if(attack == AT_NSPECIAL){
    if(instance_exists(bg_article) && bg_article != 0){
        release_gojo = true;
    }
}