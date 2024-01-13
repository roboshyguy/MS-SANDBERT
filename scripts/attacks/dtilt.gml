//////////////////////////////////////
//  Ms.Sandbert D-Tilt by roboshyguy  //
//////////////////////////////////////

set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 11);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//startup 0.5
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//startup1
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 7);

//attack1
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag (transition)
set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//full endlag 1
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//startup (transition)
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED, 8.5);

//startup2
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 7, AG_WINDOW_SFX_FRAME, 7);

//attack2
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 11);

//endlag (transition)
set_window_value(AT_DTILT, 9, AG_WINDOW_GOTO, 10);
set_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DTILT, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

//full endlag 2
set_window_value(AT_DTILT, 10, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DTILT, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//startup (transition)
set_window_value(AT_DTILT, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 11, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DTILT, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 11, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_DTILT, 11, AG_WINDOW_HSPEED, 8.5);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, bow_vfx_big);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 8);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);