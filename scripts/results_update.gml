// For next match, allow user to select portrait
var local_synced_var = get_synced_var(player);
//print_debug("synced_var = " + string(local_synced_var));
if (winner == player) {
    var winning_key = 0x1234;
    local_synced_var |= (winning_key << 16);
}
//print_debug("synced_var = " + string(local_synced_var));
set_synced_var(player, local_synced_var);