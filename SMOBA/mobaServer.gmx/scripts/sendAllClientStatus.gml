// get arguments
buff = argument[0];
client_count = argument[1];

//create buffer
buffer_seek(buff, buffer_seek_start, 0)
buffer_write(buff, buffer_string, "all_clients")
buffer_write(buff, buffer_s16, client_count)
for(i=0;i<client_count;i++){
    buffer_write(buff, buffer_string, string(ds_list_find_value(clients_name,i)) )//clients_name
    buffer_write(buff, buffer_s16, ds_list_find_value(clients_x,i))//clients_x
    buffer_write(buff, buffer_s16, ds_list_find_value(clients_y,i) )//clients_y
    buffer_write(buff, buffer_s16, ds_list_find_value(clients_health,i) )//clients_health
    buffer_write(buff, buffer_string, ds_list_find_value(clients_team,i) )//clients_health
}
var buffer_size = buffer_tell(buff);
    
// Now send all data... to all clients
for(i=0;i<ds_list_size(obj_server.clients_sockets);i++){   
    sock = ds_list_find_value(clients_sockets,i);
    network_send_packet( sock, buff, buffer_size );
}
