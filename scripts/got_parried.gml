//
if (dspecial_absorb_count > 0){
    dspecial_absorb_count--;
}

if (my_hitboxID.attack == AT_DSPECIAL){
    if (my_hitboxID.hbox_num == 2){
        hitbox_timer = 0;
    }
}

if(my_hitboxID.attack == AT_NSPECIAL) with my_hitboxID{
	hitbox_timer = 0;
	image_index = 0;
	hsp = hsp * 1.5;
}
