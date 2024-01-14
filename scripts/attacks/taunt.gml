//////////////////////////////////////
//  Ms.Sandbert Taunt by Kocakup  //
//////////////////////////////////////

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 90);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);