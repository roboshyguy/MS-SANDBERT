//////////////////////////////////////
//  Ms.Sandbert Taunt by Final HG  //
//////////////////////////////////////

set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("taunt_left"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("mfx_flashy_shing"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("glassbreak"));

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 17);