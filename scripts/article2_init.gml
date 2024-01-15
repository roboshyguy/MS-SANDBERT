spr_dir = player_id.spr_dir;
sprite_index = sprite_get("skull");
mask_index = sprite_get("skull_mask");

is_hittable = true;
destroy = false;

skull_strength = 2;

timer = 0;

explode_timer = 0;
fade_timer = 0;

explode = false;
fade = false;

skull_length = 40;
fade_length = 20;
explode_length = 26;
exploded = false;