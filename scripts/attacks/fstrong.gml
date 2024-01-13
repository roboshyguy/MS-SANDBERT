//////////////////////////////////////
//  Ms.Sandbert U-Air by Reiga  //
//////////////////////////////////////

set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_start"));

//attack
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

//endlag
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_despawn"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 6);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 178);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 300);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, bow_vfx_small);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 178);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 178);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 178);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 178);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 178);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 300);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 46);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 6, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, bow_vfx_big);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_LOCKOUT, 10);