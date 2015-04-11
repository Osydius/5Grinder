create_x = argument[0]
create_y = argument[1]
create_direction = argument[2]

buffer_seek(buff, buffer_seek_start, 0)
buffer_write(buff, buffer_string, "all_create_bullet")

buffer_write(buff, buffer_s16, create_x)//clients_x
buffer_write(buff, buffer_s16, create_y )//clients_y
buffer_write(buff, buffer_s16, create_direction )//clients_y

var buffer_size = buffer_tell(buff);
    
// Now send all data... to all clients
count = ds_list_size(clients_sockets)
for(i=0;i<count;i++)
    {   
    sock = ds_list_find_value(clients_sockets,i);
    network_send_packet( sock, buff, buffer_size );
    }
