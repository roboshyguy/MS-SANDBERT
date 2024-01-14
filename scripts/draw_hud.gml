//
if (dspecial_absorb_count > 0){
    shader_start();
    draw_sprite( sprite_get("dspecial_hud"), dspecial_absorb_count, temp_x + 132, temp_y - 32);
    shader_end();
}