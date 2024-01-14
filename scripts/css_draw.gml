// Draw the appropriate portrait
draw_sprite_ext(sprite_get("charselect" + string(selected_css_portrait)), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);


// Draw the buttons

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