// get arguments
buff = argument[0];
client_count = argument[1];

//create buffer
buffer_seek(buff, buffer_seek_start, 0)
buffer_write(buff, buffer_string, "all_players")
buffer_write(buff, buffer_u8, client_count)
client_map_key = ds_map_find_first(obj_server.clients);
for(i=0;i<client_count;i++){
    client = ds_map_find_value(obj_server.clients,client_map_key);
    c_name = client.player_name;
    c_team = client.player_team;
    buffer_write(buff, buffer_string, c_name )
    buffer_write(buff, buffer_s16, client.player_x)
    buffer_write(buff, buffer_s16, client.player_y)
    buffer_write(buff, buffer_s16, client.player_direction)
    buffer_write(buff, buffer_s16, client.player_health)
    buffer_write(buff, buffer_string, c_team)
    buffer_write(buff, buffer_string, client.player_captain)
    buffer_write(buff, buffer_string, client.player_ship)
    
    client_map_key = ds_map_find_next(obj_server.clients,client_map_key);
}
var buffer_size = buffer_tell(buff);

sock = ds_map_find_first(obj_server.clients);
// Now send all data... to all clients
for(i=0;i<client_count;i++){
    network_send_packet( sock, buff, buffer_size );
    sock = ds_map_find_next(obj_server.clients,sock);
}
