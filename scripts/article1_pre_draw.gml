
if (player_id.bg_darken_var != 0){
	draw_set_alpha(player_id.bg_darken_var);
    draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}