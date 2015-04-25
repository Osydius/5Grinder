buffer= argument[0];
socket = argument[1];

obstacles = ds_list_create();
for(var i = 0; i < instance_number(obj_obstacle); i++){
    //ds_list_add()
}

buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_string, "all_obstacles");
buffer_write(buff, buffer_s16, bullet_count);

buffer_size = obstacle_buffer
network_send_packet( socket, obstacle_buffer, buffer_size );
