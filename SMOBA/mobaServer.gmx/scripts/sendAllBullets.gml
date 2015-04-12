// get arguments
buff = argument[0];
bullet_count = argument[1];

// create buffer
buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_string, "all_bullets");
buffer_write(buff, buffer_s16, bullet_count);

for(i=0;i<bullet_count;i++){
    bullet = ds_list_find_value(obj_server.bullets,i);
    bullet_id = ds_map_find_value(bullet,"id");
    bullet_x = ds_map_find_value(bullet,"x");
    bullet_y = ds_map_find_value(bullet,"y");
    bullet_direction = ds_map_find_value(bullet,"direction");
    buffer_write(buff, buffer_s16, bullet_x)
    buffer_write(buff, buffer_s16, bullet_y)
    buffer_write(buff, buffer_s16, bullet_direction)
}

// send the buffer
var buffer_size = buffer_tell(buff);
       
for(i=0;i<ds_list_size(obj_server.clients_sockets);i++){   
    sock = ds_list_find_value(obj_server.clients_sockets,i);
    network_send_packet( sock, buff, buffer_size );
}
