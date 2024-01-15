// Draw the appropriate portrait
switch (selected_portrait) {
    case 0:
        selected_css_sprite = sprite_get("charselect_mudkid");
        break;
    
    case 1:
        selected_css_sprite = sprite_get("charselect_vforce");
        break;
    
    case 2:
        selected_css_sprite = sprite_get("charselect_tdude");
        break;
    
    case 3:
        selected_css_sprite = sprite_get("charselect_sb");
        break;
    
    case 4:
        selected_css_sprite = sprite_get("charselect_scaurai");
        break;
    
    case 5:
        selected_css_sprite = sprite_get("charselect_dino");
        break;
    
    case 6:
        selected_css_sprite = sprite_get("charselect_reiga");
        break;
    
    case 7:
        selected_css_sprite = sprite_get("charselect_finalhg");
        break;
    
    case 8:
        selected_css_sprite = sprite_get("charselect_sandbert");
        break;
    
    case 9:
        selected_css_sprite = sprite_get("charselect_renlira");
        break;
    
    case 10:
        selected_css_sprite = sprite_get("charselect_chmmr");
        break;
    
    case 11:
        selected_css_sprite = sprite_get("charselect_hyu");
        break;
    
    case 12:
        selected_css_sprite = sprite_get("charselect_dakota");
        break;
    
    case 13:
        selected_css_sprite = sprite_get("charselect_infinite");
        break;
    
    case 14:
        selected_css_sprite = sprite_get("charselect_bar");
        break;
}
draw_sprite_ext(selected_css_sprite, 0, x + 8, y + 8, 2, 2, 0, c_white, 1);

// Only draw buttons if allowed
if (won_previously) {
    prepare_shader();
    shader_end();
    
    // Left button
    draw_sprite_ext(sprite_get("css_button"), 0 + left_button_frame, x + left_button_origin_x, y + left_button_origin_y, 2, 2, 0, c_white, 1);
    // Right button
    draw_sprite_ext(sprite_get("css_button"), 2 + right_button_frame, x + right_button_origin_x, y + right_button_origin_y, 2, 2, 0, c_white, 1);
    // Dice
    draw_sprite_ext(sprite_get("css_button"), 4 + dice_button_frame, x + dice_button_origin_x, y + dice_button_origin_y, 2, 2, 0, c_white, 1);
    
    shader_start();
    prepare_shader();
}

//functions by supersonic
#define prepare_shader()
{
    //init_shader(); fails to generate these variables for some reason,
    //so we assign them to these completely equivalent values
    //this allows shader_start() to be run in css_draw.gml!!!
    static_colorB = colorB;
    static_colorO = colorO;
    static_colorT = colorT;
    static_colorI = colorI;
    init_shader();
}