//
if (attack == AT_DSPECIAL){
    if (dspecial_absorb_count == 3){
        attack = AT_DSPECIAL_2;
    }
}

if (attack == AT_TAUNT && down_down) {
    attack = AT_TAUNT_2;    
    taunt_icon = random_func(0, sprite_get_number(sprite_get("taunt_icons")), true)
    bag_taunt = bag_taunt_max;
    //print([sprite_get_number(sprite_get("taunt_icons")), taunt_icon]);
}

if (attack == AT_TAUNT && up_down) {
    attack = AT_EXTRA_1;    
}

