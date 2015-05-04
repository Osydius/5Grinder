buff = argument[0];
bullet_count = argument[1];

buffer_seek(buff, buffer_seek_start, 0)
buffer_write(buff, buffer_string, "all_bullets")
buffer_write(buff, buffer_u16, bullet_count)

current_bullet = ds_map_find_first(obj_server.bullets);
for(var i = 0; i < bullet_count; i++) {
    bullet = ds_map_find_value(obj_server.bullets,current_bullet);
    buffer_write(buff, buffer_s16, bullet.bullet_id);
    buffer_write(buff, buffer_s16, bullet.bullet_x );
    buffer_write(buff, buffer_s16, bullet.bullet_y );
    buffer_write(buff, buffer_s16, bullet.bullet_angle );  
}

var buffer_size = buffer_tell(buff);
sock = ds_map_find_first(obj_server.clients);
// Now send all data... to all clients
for(i=0;i<client_count;i++){
    network_send_packet( sock, buff, buffer_size );
    sock = ds_map_find_next(obj_server.clients,sock);
}
