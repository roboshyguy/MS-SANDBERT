curr_attack = AT_TAUNT_2;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("bag_taunt"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 8);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, hurtbox_spr );

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 16);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 5);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 5);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(curr_attack, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 4, AG_WINDOW_SFX, asset_get("mfx_confirm"));
set_window_value(curr_attack, 4, AG_WINDOW_SFX_FRAME, 14);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(curr_attack, 6, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 6, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(curr_attack, 7, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 7, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(curr_attack, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 7, AG_WINDOW_SFX, asset_get("mfx_back"));
set_window_value(curr_attack, 7, AG_WINDOW_SFX_FRAME, 10);

set_window_value(curr_attack, 8, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 8, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 8, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(curr_attack, 0);
