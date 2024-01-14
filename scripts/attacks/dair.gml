//////////////////////////////////////
//  Ms.Sandbert D-Air by Bar-Kun  //
//////////////////////////////////////

set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//attack1
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 4);

//attack2
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 4);

//attack3
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 4);

//attack4
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//attack5
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX_FRAME, 6);

//endlag
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));