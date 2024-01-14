//post_draw.gml
var temp_color = c_white;

//Dibujando BOW para CROUCH
	if state == PS_CROUCH &&image_index ==3{
		if state_timer <=15{
			draw_sprite_ext( sprite_get("bow"), 0, x- 42*spr_dir, y-26, -spr_dir , 1, 90 , c_white, 1);
		}else{
			draw_sprite_ext( sprite_get("bow"), 0, x-8*spr_dir + spr_dir*cos((state_timer)/60)*-35, y-26, spr_dir , 1, (state_timer -15)*-2*spr_dir , c_white, 1);
		}
	}