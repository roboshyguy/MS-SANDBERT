//
if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && !place_meeting(x,y+4,(asset_get("par_block"))) &&(sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
    shader_end();
    draw_sprite(sprite_get("plat_behind"), image_index, x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}

switch (get_player_color(player))
{
    // nyaw alt
    case 24:
		FlagPart(make_colour_rgb(85, 205, 252), sprite_height, sprite_yoffset); // mayablue
		FlagPart(make_colour_rgb(247, 168, 223), 20, 26); // pink
		FlagPart(c_white, 8, 20);
		gpu_set_fog(0, c_white, 0, 0);
        break;
    
    //GX  
    case 26:
        gpu_set_fog(true,c_white,0,0);
        draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir * 2, 2, 0, c_white, 0.2);
        draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir * 2, 2, 0, c_white, 0.2);
        draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir * 2, 2, 0, c_white, 0.2);
        draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir * 2, 2, 0, c_white, 0.2);
        gpu_set_fog(false,c_black,0,0);
        break;
}

#define FlagPart(_colour, _height, _xLoc)
{
	gpu_set_fog(1, _colour, 0, 1);
	draw_sprite_general(sprite_index,
		image_index,
		0,
		sprite_yoffset-_xLoc,
		sprite_width*spr_dir,
		_height,
		x+draw_x+dcos(spr_angle)*(-sprite_xoffset)*2+dsin(spr_angle)*(-_xLoc)*2,
		y+draw_y-dsin(spr_angle)*(-sprite_xoffset)*2+dcos(spr_angle)*(-_xLoc)*2,
		spr_dir*2,
		2,
		spr_angle, c_white, c_white, c_white, c_white,
		1);
}