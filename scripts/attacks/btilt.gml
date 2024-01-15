///////////////////////////////////////////////////////////////
//  Ms.Sandbert B-Tilt animated by RaRE boy, coded by ravyn  //
///////////////////////////////////////////////////////////////

var attack = AT_FSPECIAL_2;

set_attack_value(attack, AG_SPRITE, sprite_get("btilt"));
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("btilt_hurt"));

var win_num = 1;
// Startup
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(attack, win_num, AG_WINDOW_SFX_FRAME, 9);

win_num++;
// Skull
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 1);

win_num++;
// Whiff
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(attack, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(attack, AG_NUM_WINDOWS, win_num);

var hbox_num = 1;

// These variables affect stats of move; in one place for ease of access
var exp_pri = 2; // Fist Priority
var exp_dmg = 8; //  Fist Damage
var exp_ang = 361; //  Fist Angle
var exp_flip = 6; //  Fist Angle Flipper
var exp_kb = 10; //  Fist Knockback
var exp_kbg = 0.5; //  Fist Knockback Growth
var exp_hp = 11; //  Fist Hitpause
var exp_hpg = 0.6; //  Fist Hitpause Growth
var exp_vfx = HFX_GEN_BIG; //  Fist Visual Effect
var exp_sfx = asset_get("sfx_blow_heavy2"); //  Fist Sound Effect

// Explosion
set_hitbox_value(attack, hbox_num, HG_WINDOW, 0);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, 5);
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 62);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 82);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 90);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, exp_pri);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, exp_dmg);
set_hitbox_value(attack, hbox_num, HG_ANGLE, exp_ang);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, exp_flip);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, exp_vfx);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, exp_kb);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, exp_kbg);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, exp_hp);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, exp_hpg);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, exp_sfx);

set_num_hitboxes(attack, hbox_num);
