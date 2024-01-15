//
if (attack == AT_DSPECIAL){
    if (dspecial_absorb_count == 3){
        attack = AT_DSPECIAL_2;
    }
}

if (attack == AT_USTRONG){
    reset_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED);
    set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
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
if (attack == AT_TAUNT && right_down) {
    attack = AT_EXTRA_2;    
}
if (attack == AT_TAUNT && left_down) {
    attack = AT_EXTRA_3;    
}

if (attack == AT_FSPECIAL) {
    reset_attack_value(attack, AG_OFF_LEDGE);
    reset_attack_value(attack, AG_NUM_WINDOWS);
    reset_hitbox_value(attack, 5, HG_WINDOW);
    reset_hitbox_value(attack, 6, HG_WINDOW);
}
