net_buff = argument[0];
sock = argument[1];

b_name=buffer_read(net_buff , buffer_string )
count=ds_map_size(obj_server.clients)
name_exists=0
client_socket = ds_map_find_first(obj_server.clients);

for(i=0;i<count;i++) {
    player = ds_map_find_value(obj_server.clients,client_socket);
    if(b_name == player.player_name){
        name_exists = 1;
    }
    client_socket = ds_map_find_next(obj_server.clients,client_socket);
}

buffer_seek(buff, buffer_seek_start, 0)   
buffer_write(buff, buffer_string, "name_exists")
buffer_write(buff, buffer_bool, name_exists)
var buffer_size = buffer_tell(buff);
network_send_packet( sock, buff, buffer_size );
