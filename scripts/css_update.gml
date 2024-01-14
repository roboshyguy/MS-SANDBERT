// Change the synced var when a button is pressed


// Detect when a button is hovered/clicked
if (instance_exists(cursor_id)) {
	var cursor_x = get_instance_x(cursor_id);
	var cursor_y = get_instance_y(cursor_id);

	// Bounds of left button
	if ((cursor_x > left_button_origin_x + left_button_border_buffer + x)
		&& (cursor_x < left_button_origin_x + left_button_width - left_button_border_buffer + x)
		&& (cursor_y > left_button_origin_y + left_button_border_buffer + y)
		&& (cursor_y < left_button_origin_y + left_button_height - left_button_border_buffer + y))
	{
		left_button_frame = 1;
		// If over one of the boxes, suppress the cursor and detect click
		suppress_cursor = 1;
		if (menu_a_pressed) {
			selected_css_portrait--;
			if (selected_css_portrait < 0) {
			    selected_css_portrait = num_portrait_options - 1;
			}
			sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
		}
	} else {
		left_button_frame = 0;
	}
	
	// Bounds of right button
	if ((cursor_x > right_button_origin_x + right_button_border_buffer + x)
		&& (cursor_x < right_button_origin_x + right_button_width - right_button_border_buffer + x)
		&& (cursor_y > right_button_origin_y + right_button_border_buffer + y)
		&& (cursor_y < right_button_origin_y + right_button_height - right_button_border_buffer + y))
	{
		right_button_frame = 1;
		// If over one of the boxes, suppress the cursor and detect click
		suppress_cursor = 1;
		if (menu_a_pressed) {
			selected_css_portrait++;
			if (selected_css_portrait >= num_portrait_options) {
			    selected_css_portrait = 0;
			}
			sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
		}
	} else {
		right_button_frame = 0;
	}
	
	// Bounds of dice button
	if ((cursor_x > dice_button_origin_x + dice_button_border_buffer + x)
		&& (cursor_x < dice_button_origin_x + dice_button_width - dice_button_border_buffer + x)
		&& (cursor_y > dice_button_origin_y + dice_button_border_buffer + y)
		&& (cursor_y < dice_button_origin_y + dice_button_height - dice_button_border_buffer + y))
	{
		dice_button_frame = 1;
		// If over one of the boxes, suppress the cursor and detect click
		suppress_cursor = 1;
		if (menu_a_pressed) {
		    var prev_portrait = selected_css_portrait;
			selected_css_portrait = random_func(0, num_portrait_options - 2, true);
			if (selected_css_portrait >= prev_portrait) {
			    selected_css_portrait++;
			}
			sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
		}
	} else {
		dice_button_frame = 0;
	}
}

// Update the synced var with the choice
set_synced_var(player, selected_css_portrait);
