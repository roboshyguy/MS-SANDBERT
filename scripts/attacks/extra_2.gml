//////////////////////////////////////
//  Ms.Sandbert Taunt by BagelBoy  //
//////////////////////////////////////

set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("thumbtaunt"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("thumbtaunt_hurt"));


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("mssandbert_thumbtaunt_1"));


set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_SFX, sound_get("mssandbert_thumbtaunt_2"));