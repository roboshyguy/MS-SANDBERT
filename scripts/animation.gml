//
if (sprite_index == sprite_get("bouncehurt") && spr_dir == -1) {
    sprite_index = sprite_get("bouncehurt_left");
}
if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH_STOP) { 
hurtboxID.sprite_index = sprite_get("dash_hurtbox"); 
}
if(state == PS_IDLE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_HITSTUN || state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP || state == PS_PARRY_START){
    hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
}