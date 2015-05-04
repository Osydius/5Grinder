net_buff = argument[0];

total_players = buffer_read(net_buff,buffer_u8);
for(var i = 0; i < total_players; i++) {
    p_name = buffer_read(net_buff, buffer_string);
    p_x = buffer_read(net_buff, buffer_s16);
    p_y = buffer_read(net_buff, buffer_s16);
    p_direction = buffer_read(net_buff, buffer_s16);
    p_health = buffer_read(net_buff, buffer_s16);
    p_team = buffer_read(net_buff, buffer_string);
    p_captain = buffer_read(net_buff, buffer_string);
    p_ship = buffer_read(net_buff, buffer_string);
    
    player = ds_map_find_value(obj_client.players,p_name);
    if(player == undefined){
        player = instance_create(p_x,p_y,obj_player);
        ds_map_add(obj_client.players,p_name,player);
    }
    
    player.player_name = p_name;
    player.player_x = p_x;
    player.player_y = p_y;
    player.player_direction = p_direction;
    player.player_health = p_health;
    player.player_team = p_team;
    player.player_captain = p_captain;
    player.player_ship = p_ship;
}
