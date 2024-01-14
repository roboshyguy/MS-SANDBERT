//////////////////////////////////////
//  Ms.Sandbert Taunt by dreem  //
//////////////////////////////////////

set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dreem_taunt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_despawn"));
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("sfx_smallbert_yell"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 18);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, asset_get("sfx_orcane_fspecial_pud"));