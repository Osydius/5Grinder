buff = argument[0];
bullet_count = argument[1];

buffer_seek(buff, buffer_seek_start, 0)
buffer_write(buff, buffer_string, "all_bullets")
buffer_write(buff, buffer_u8, bullet_count)

current_bullet = ds_map_find_first(obj_server.bullets);
for(var i = 0; i < bullet_count; i++) {
    bullet = ds_map_find_value(obj-server.bullets,current_bullet);
    buffer_write(buff, buffer_string, bullet.bullet_id);
    buffer_write(buff, buffer_string, bullet.bullet_x );
    buffer_write(buff, buffer_string, bullet.bullet_y );
    buffer_write(buff, buffer_string, bullet.bullet_angle );
    
}

