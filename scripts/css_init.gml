left_button_origin_x = 10;
left_button_origin_y = 126;
left_button_width = 15 * 2;
left_button_height = 13 * 2;
left_button_border_buffer = 0;
left_button_frame = 0;
left_mode_active = false;

right_button_origin_x = 70;
right_button_origin_y = 126;
right_button_width = 15 * 2;
right_button_height = 13 * 2;
right_button_border_buffer = 0;
right_button_frame = 0;
right_mode_active = false;

dice_button_origin_x = 40;
dice_button_origin_y = 126;
dice_button_width = 15 * 2;
dice_button_height = 13 * 2;
dice_button_border_buffer = 0;
dice_button_frame = 0;
dice_mode_active = false;

// Don't reset the synced var by default to keep the user's selection
// Check synced var is legal, if not reset to 0
// Hm... actually, can we roll a random number here?
var local_synced_var = get_synced_var(player);
num_portrait_options = 13;
if (local_synced_var > 3) {
    local_synced_var = 0;
}
selected_css_portrait = local_synced_var;