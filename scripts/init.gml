/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
 */

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 58;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_parry = asset_get("mfx_star"); 

// VFX
bow_vfx_small = hit_fx_create(sprite_get("vfx_small"), 18);
bow_vfx_big = hit_fx_create(sprite_get("vfx"), 21);

// Variables
times_stomped = 0;

attacking = false;

// fspecial
fist_launch_speed = 10; // The speed the FSPECIAL fist launches at [ground, air]
fist_bounceback_speed = [3, 4]; // FSPECIAL fist hit bounceback, x, y
fist_hop_speed = 1; // The speed FSPECIAL fist hops
grab_float_max_speed = [5, 5, 6.5]; // Up, down, horizontal
grab_float_accel = [0.6, 0.6, 0.8]; // Up, down, horizontal
grab_float_deccel = [0.4, 0.4]; // Vertical, horizontal
grab_launch_speed = 8;
grabbed = [];
fspecial_ledge_cancel = 0;
moved_up = false;

nspecial_charge = 0;
nspec_fully_charged = false;
bg_darken_var = 0;
gojo_var = 0;
gojo_x = x;
gojo_y = y;
release_gojo = false;
bg_article = 0;

dspecial_absorb_count = 0;

dspecial_damage_multiplier = 2.75; //technically these arent multipliers but shhh i dont feel like rewriting the variable names
dspecial_bkb_multiplier = 2.8;
dspecial_kbs_multiplier = 2.75;

bag_taunt = 0;
bag_taunt_max = 1;
taunt_icon = 0;

wait_time = 300;
wait_length = 45;
wait_sprite = sprite_get("idle_wait"); 

miiverse_post = sprite_get("miiverse");

pot_compat_variable = sprite_get("pumbo_compat");
pot_compat_text = "Cobblestone Pie";

mamizou_transform_spr = sprite_get("mamizou_compat"); 

bbc_msg = "The biggest collab in workshop history, Mrs. Sandbert was 
made by 30+ talented devs. WORKSHOP IS SAVED BABYYYY!!!!"

wily_robotmaster_img = sprite_get("Mrs_WilyCastle");

three_stock = false;
ditto_mssandbert = false;
FireLaser = noone;


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.13;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 26;		// 18   -  32
wall_frames         = 3;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 6;

// Tech
tech_active_frames = 3;
tech_recovery_frames = 2;

// Tech roll
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 6;
air_dodge_recovery_frames   = 4;

// Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
set_victory_theme(sound_get("lipstickBow")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

nair_loop_timer = 0;

// Interactions with synced var
// Get the value from it and determine victory/results portraits
var synced_var = get_synced_var(player);
//print_debug("Freshly synced_var = " + string(synced_var));
selected_portrait = synced_var & 0xffff;
num_portrait_options = 16;
var winning_key_local = (synced_var >> 16) & 0xffff;
// Compare against this key
winning_key = 0x1234;
// If we haven't won a game before, do a random portrait
//print_debug("winning_key_local = " + string(winning_key_local));
random_portrait = (winning_key_local != winning_key);

// Is this Sandbetty?
ITSA_ME_SANDBETTYO = true;