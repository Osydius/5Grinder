net_buff = argument[0];

total_players = buffer_read(net_buff,buffer_u8);
player_key = ds_map_find_first(obj_client.players);
for(var i = 0; i < total_players; i++) {
    player = ds_map_find_value(obj_client.players,player_key);
    player.player_name = buffer_read(net_buff, buffer_string);
    player.player_x = buffer_read(net_buff, buffer_s16);
    player.player_y = buffer_read(net_buff, buffer_s16);
    player.player_direction = buffer_read(net_buff, buffer_s16);
    player.player_health = buffer_read(net_buff, buffer_s16);
    player.player_team = buffer_read(net_buff, buffer_string);
    player.player_captain = buffer_read(net_buff, buffer_string);
    player.player_ship = buffer_read(net_buff, buffer_string);
    
    player_key = ds_map_find_next(obj_client.players,player_key);
}
