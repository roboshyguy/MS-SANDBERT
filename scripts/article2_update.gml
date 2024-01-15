if (!hitpause) {
    timer++;
    
    if (timer >= skull_length) {
        fade = true;
    }
    
    if (explode == true) {
        is_hittable = false;
        fade = false;
        explode_timer++;
        image_index = 1 + ((explode_timer / (explode_length + 1)) * 5);
        if (image_index >= 2 && !exploded) {
            with (player_id) {
                sound_play(asset_get("sfx_mol_uspec_explode"));
                create_hitbox(AT_FSPECIAL_2, 1, x, y);
            }
            exploded = true;
        }
        if (explode_timer >= explode_length) {
            destroy = true;
        }
    }
    
    if (fade) {
        is_hittable = false;
        fade_timer++;
        image_index = 6 + ((fade_timer / (fade_length + 1)) * 3);
        if (fade_timer >= fade_length) {
            destroy = true;
        }
    }

}

if (destroy) {
    player_id.skull = noone;
    instance_destroy();
}