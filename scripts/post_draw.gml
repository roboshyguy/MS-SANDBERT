//
if (attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND && (window == 5 || window == 6)) {
    draw_sprite_ext( sprite_get("taunt_icons"), taunt_icon, x + 54 * spr_dir, y - 28, 2 * spr_dir, 2, 0, c_white, true );
}