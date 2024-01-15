/////////////////////////////////////////////////////////////////
//  Mrs. Sandbert F-Special animated by TehEnd, coded by ravyn //
////////////////////////////////////////////////////////////////
var attack = AT_FSPECIAL;

set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(attack, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

// Window 1 - Tap or Hold?
var win_num = 1;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);

// Window 2 - Hold pre-attack
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(attack, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, win_num, AG_WINDOW_SFX, asset_get("sfx_ell_fspecial_charge"));

// Window 3 - Hold launch
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(attack, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, win_num, AG_WINDOW_SFX, asset_get("sfx_ell_fist_explode"));

// Window 4 - Hold Whiff
win_num++;
set_window_value(attack, win_num, AG_WINDOW_TYPE, 7);
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 9);

set_attack_value(attack, AG_NUM_WINDOWS, win_num);

// Window 5 - Hold Hit
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 13);

// Window 6 - Grab Pre-Launch
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 5);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(attack, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, win_num, AG_WINDOW_SFX, asset_get("sfx_pom_cheer"));

// Window 7 - Grab Launch
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 2);

// Window 8 - Grab Whiff
win_num++;
set_window_value(attack, win_num, AG_WINDOW_TYPE, 7);
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 17);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 4);

// Window 9 - Grab Pre-Crunch 1
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 17);

// Window 10 - Grab Crunch 1
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 18);

// Window 11 - Grab Pre-Crunch 2
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 19);

// Window 12 - Grab Crunch 2
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 22);

// Window 13 - Grab Pre-Throw
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 23);

// Window 14 - Grab Throw
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 26);

// Window 15 - Grab Endlag
win_num++;
set_window_value(attack, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, win_num, AG_WINDOW_ANIM_FRAME_START, 27);

var hbox_num = 1;

// These variables affect stats of move; in one place for ease of access
var fist_pri = 2; // Fist Priority
var fist_dmg = 8; //  Fist Damage
var fist_ang = 361; //  Fist Angle
var fist_flip = 6; //  Fist Angle Flipper
var fist_kb = 9; //  Fist Knockback
var fist_kbg = 0.5; //  Fist Knockback Growth
var fist_hp = 11; //  Fist Hitpause
var fist_hpg = 0.6; //  Fist Hitpause Growth
var fist_vfx = HFX_GEN_BIG; //  Fist Visual Effect
var fist_sfx = asset_get("sfx_blow_heavy2"); //  Fist Sound Effect

var grab_pri = 2; // Grab Priority
var grab_dmg = 3; // Grab Damage
var grab_ang = 0; // Grab Angle
var grab_flip = 0; // Grab Angle Flipper
var grab_kb = 0.5; // Grab Knockback
var grab_kbg = 0; // Grab Knockback Growth
var grab_hp = 6; // Grab Hitpause
var grab_hpg = 0.6; // Grab Hitpause Growth
var grab_vfx = HFX_GEN_SWEET; // Grab Visual Effect
var grab_sfx = asset_get("sfx_pom_slap1"); // Grab Sound Effect

// Grab crunch [1, 2]
var crunch_pri = [2, 2]; // Crunch Priority
var crunch_dmg = [2, 2]; // Crunch Damage
var crunch_ang = [0, 0]; // Crunch Angle
var crunch_flip = [0, 0]; // Crunch Angle Flipper
var crunch_kb = [0.5, 0.5]; // Crunch Knockback
var crunch_kbg = [0, 0]; // Crunch Knockback Growth
var crunch_hp = [5, 5]; // Crunch Hitpause
var crunch_hpg = [0.4, 0.4]; // Crunch Hitpause Growth
var crunch_vfx = [HFX_GEN_SPIN, HFX_GEN_SPIN]; // Crunch Visual Effect
var crunch_sfx = [asset_get("sfx_crunch_water"), asset_get("sfx_crunch")]; // Crunch Sound Effect

// [Aerial, Grounded]
// This is because spikes on ground do terrible knockback
// The groundedness check is done in attack_update due to weirdness with grabbed_invisible
var throw_pri = [2, 2]; // Throw Priority
var throw_dmg = [4, 4]; // Throw Damage
var throw_ang = [270, 90]; // Throw Angle
var throw_flip = [0, 0]; // Throw Angle Flipper
var throw_kb = [7, 9]; // Throw Knockback
var throw_kbg = [0.6, 0.6]; // Throw Knockback Growth
var throw_hsm = [0.5, 0.5]; // Throw Hitstun Multiplier
var throw_hp = [8, 8]; // Throw Hitpause
var throw_hpg = [0.8, 0.8]; // Throw Hitpause Growth
var throw_vfx = [HFX_ABY_EXPLODE_WARN, HFX_ABY_EXPLODE_WARN]; // Throw Visual Effect
var throw_sfx = [asset_get("sfx_abyss_explosion"), asset_get("sfx_abyss_explosion")]; //  Throw Sound Effect

// Fist
set_hitbox_value(attack, hbox_num, HG_WINDOW, 3);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, get_window_value(attack, get_hitbox_value(attack, hbox_num, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 32);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 62);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, fist_pri);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, fist_dmg);
set_hitbox_value(attack, hbox_num, HG_ANGLE, fist_ang);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, fist_flip);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, fist_vfx);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, fist_kb);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, fist_kbg);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, fist_hp);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, fist_hpg);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, fist_sfx);

// Grab
hbox_num++;
set_hitbox_value(attack, hbox_num, HG_WINDOW, 7);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, get_window_value(attack, get_hitbox_value(attack, hbox_num, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 36);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 68);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 68);
set_hitbox_value(attack, hbox_num, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, grab_pri);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, grab_dmg);
set_hitbox_value(attack, hbox_num, HG_ANGLE, grab_ang);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, grab_flip);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, grab_vfx);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, grab_kb);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, grab_kbg);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, grab_hp);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, grab_hpg);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, grab_sfx);

// Grab Crunch 1
hbox_num++;
set_hitbox_value(attack, hbox_num, HG_WINDOW, 10);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, get_window_value(attack, get_hitbox_value(attack, hbox_num, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 24);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 78);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 78);
set_hitbox_value(attack, hbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hbox_num, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, crunch_pri[0]);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, crunch_dmg[0]);
set_hitbox_value(attack, hbox_num, HG_ANGLE, crunch_ang[0]);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, crunch_flip[0]);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, crunch_vfx[0]);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, crunch_kb[0]);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, crunch_kbg[0]);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, crunch_hp[0]);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, crunch_hpg[0]);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, crunch_sfx[0]);

// Grab Crunch 2
hbox_num++;
set_hitbox_value(attack, hbox_num, HG_WINDOW, 12);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, get_window_value(attack, get_hitbox_value(attack, hbox_num, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 24);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 82);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 82);
set_hitbox_value(attack, hbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hbox_num, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, crunch_pri[1]);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, crunch_dmg[1]);
set_hitbox_value(attack, hbox_num, HG_ANGLE, crunch_ang[1]);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, crunch_flip[1]);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, crunch_vfx[1]);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, crunch_kb[1]);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, crunch_kbg[1]);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, crunch_hp[1]);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, crunch_hpg[1]);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, crunch_sfx[1]);

// Grab Throw Aerial
hbox_num++;
set_hitbox_value(attack, hbox_num, HG_WINDOW, 14);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, get_window_value(attack, get_hitbox_value(attack, hbox_num, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 8);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 128);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 78);
set_hitbox_value(attack, hbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(attack, hbox_num, HG_HITSTUN_MULTIPLIER, throw_hsm[0]);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, throw_pri[0]);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, throw_dmg[0]);
set_hitbox_value(attack, hbox_num, HG_ANGLE, throw_ang[0]);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, throw_flip[0]);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, throw_vfx[0]);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, throw_kb[0]);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, throw_kbg[0]);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, throw_hp[0]);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, throw_hpg[0]);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, throw_sfx[0]);

// Grab Throw Grounded
hbox_num++;
set_hitbox_value(attack, hbox_num, HG_WINDOW, 14);
set_hitbox_value(attack, hbox_num, HG_LIFETIME, get_window_value(attack, get_hitbox_value(attack, hbox_num, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(attack, hbox_num, HG_HITBOX_X, 8);
set_hitbox_value(attack, hbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(attack, hbox_num, HG_WIDTH, 128);
set_hitbox_value(attack, hbox_num, HG_HEIGHT, 78);
set_hitbox_value(attack, hbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(attack, hbox_num, HG_HITSTUN_MULTIPLIER, throw_hsm[1]);
set_hitbox_value(attack, hbox_num, HG_PRIORITY, throw_pri[1]);
set_hitbox_value(attack, hbox_num, HG_DAMAGE, throw_dmg[1]);
set_hitbox_value(attack, hbox_num, HG_ANGLE, throw_ang[1]);
set_hitbox_value(attack, hbox_num, HG_ANGLE_FLIPPER, throw_flip[1]);
set_hitbox_value(attack, hbox_num, HG_VISUAL_EFFECT, throw_vfx[1]);
set_hitbox_value(attack, hbox_num, HG_BASE_KNOCKBACK, throw_kb[1]);
set_hitbox_value(attack, hbox_num, HG_KNOCKBACK_SCALING, throw_kbg[1]);
set_hitbox_value(attack, hbox_num, HG_BASE_HITPAUSE, throw_hp[1]);
set_hitbox_value(attack, hbox_num, HG_HITPAUSE_SCALING, throw_hpg[1]);
set_hitbox_value(attack, hbox_num, HG_HIT_SFX, throw_sfx[1]);

set_num_hitboxes(attack, hbox_num);