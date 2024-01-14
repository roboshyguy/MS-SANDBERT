//////////////////////////////////////
//  Ms.Sandbert N-Air by JH  //
//////////////////////////////////////

set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 13);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//startup 1
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 11);

//hit 1
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//startup 2
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 7);

//hit 2
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//sex kick active 1
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);

//sex kick active 2
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);

//sex kick endlag
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 7, AG_WINDOW_GOTO, 14);

//spin startup
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 8, AG_WINDOW_SFX_FRAME, 2);

//spin
set_window_value(AT_NAIR, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAME_START, 15);

//stall-then-fall (early)
set_window_value(AT_NAIR, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 10, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NAIR, 10, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NAIR, 10, AG_WINDOW_VSPEED, 9);

//stall-then-fall (late)
set_window_value(AT_NAIR, 11, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 11, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_NAIR, 11, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 11, AG_WINDOW_VSPEED, 12);
set_window_value(AT_NAIR, 11, AG_WINDOW_TYPE, 10);

//land
set_window_value(AT_NAIR, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 12, AG_WINDOW_ANIM_FRAME_START, 21);

//endlag
set_window_value(AT_NAIR, 13, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 13, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_NAIR, 13, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 20);

//falcon nair 1
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 86);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, bow_vfx_small);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 54);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 52);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, bow_vfx_small);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

//sex kick early
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 44);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, bow_vfx_big);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 68);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, 4);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, bow_vfx_big);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -8);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 46);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, bow_vfx_big);

//sex kick late
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -4);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 32);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 24);
set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 64);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, 4);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 28);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 26);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -14);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -2);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 34);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, bow_vfx_small);

//spin

//1
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 104);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 104);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -8);
set_hitbox_value(AT_NAIR, 10, HG_WIDTH, 118);
set_hitbox_value(AT_NAIR, 10, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT, bow_vfx_small);

//2
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 11, HG_WIDTH, 104);
set_hitbox_value(AT_NAIR, 11, HG_HEIGHT, 104);
set_hitbox_value(AT_NAIR, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 11, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 11, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 11, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NAIR, 11, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 12, HG_WIDTH, 118);
set_hitbox_value(AT_NAIR, 12, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 12, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 12, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 12, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 12, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 12, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 12, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NAIR, 12, HG_VISUAL_EFFECT, bow_vfx_small);

//3
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 13, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 13, HG_WIDTH, 104);
set_hitbox_value(AT_NAIR, 13, HG_HEIGHT, 104);
set_hitbox_value(AT_NAIR, 13, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 13, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 13, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 13, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 13, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 13, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_NAIR, 13, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_NAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 14, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_Y, -8);
set_hitbox_value(AT_NAIR, 14, HG_WIDTH, 118);
set_hitbox_value(AT_NAIR, 14, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 14, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 14, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 14, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 14, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 14, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 14, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 14, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_NAIR, 14, HG_VISUAL_EFFECT, bow_vfx_small);

//4
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 15, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 15, HG_WIDTH, 104);
set_hitbox_value(AT_NAIR, 15, HG_HEIGHT, 104);
set_hitbox_value(AT_NAIR, 15, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 15, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 15, HG_ANGLE, 300);
//set_hitbox_value(AT_NAIR, 15, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 15, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 15, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 15, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_NAIR, 15, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_NAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW, 9);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 16, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 16, HG_WIDTH, 118);
set_hitbox_value(AT_NAIR, 16, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 16, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 16, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 16, HG_ANGLE, 300);
//set_hitbox_value(AT_NAIR, 16, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 16, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 16, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 16, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_NAIR, 16, HG_VISUAL_EFFECT, bow_vfx_small);

//stall-then-fall spike (early)

set_hitbox_value(AT_NAIR, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 17, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 17, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NAIR, 17, HG_WIDTH, 98);
set_hitbox_value(AT_NAIR, 17, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 17, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 17, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 17, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 17, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 17, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 17, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_NAIR, 17, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 17, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 17, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 17, HG_VISUAL_EFFECT, bow_vfx_big);

set_hitbox_value(AT_NAIR, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 18, HG_WINDOW, 10);
set_hitbox_value(AT_NAIR, 18, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 18, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NAIR, 18, HG_WIDTH, 94);
set_hitbox_value(AT_NAIR, 18, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 18, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 18, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 18, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 18, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 18, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 18, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_NAIR, 18, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 18, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 18, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 18, HG_VISUAL_EFFECT, bow_vfx_big);

//stall-then-fall spike (late)

set_hitbox_value(AT_NAIR, 19, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 19, HG_WINDOW, 11);
set_hitbox_value(AT_NAIR, 19, HG_LIFETIME, 9);
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 19, HG_WIDTH, 96);
set_hitbox_value(AT_NAIR, 19, HG_HEIGHT, 74);
set_hitbox_value(AT_NAIR, 19, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 19, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 19, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 19, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 19, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 19, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 19, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 19, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 19, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_NAIR, 19, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 19, HG_VISUAL_EFFECT, bow_vfx_big);

//landing

set_hitbox_value(AT_NAIR, 20, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 20, HG_WINDOW, 12);
set_hitbox_value(AT_NAIR, 20, HG_SHAPE, 1);
set_hitbox_value(AT_NAIR, 20, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_X, 32);
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NAIR, 20, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 20, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 20, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 20, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 20, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 20, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 20, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 20, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 20, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NAIR, 20, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, 20, HG_HITBOX_GROUP, 8);
set_hitbox_value(AT_NAIR, 20, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 20, HG_VISUAL_EFFECT, bow_vfx_big);

/*
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 21, HG_WINDOW, 12);
set_hitbox_value(AT_NAIR, 21, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_X, 70);
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 21, HG_WIDTH, 76);
set_hitbox_value(AT_NAIR, 21, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR, 21, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 21, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 21, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 21, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 21, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 21, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 21, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NAIR, 21, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, 21, HG_HITBOX_GROUP, 8);
set_hitbox_value(AT_NAIR, 21, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 21, HG_VISUAL_EFFECT, bow_vfx_big);
*/