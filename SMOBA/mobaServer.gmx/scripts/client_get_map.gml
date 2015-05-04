net_buff = argument[0];
sock = argument[1];

// create buffer
buffer_seek(net_buff, buffer_seek_start, 0);
buffer_write(net_buff, buffer_string, "map_objects");

// set map buffer room info
buffer_write(net_buff, buffer_u16, room_width);
buffer_write(net_buff, buffer_u16, room_height);

// set map buffer base info
total_objects = instance_number(obj_base);
buffer_write(net_buff, buffer_u8, total_objects);
for(var i = 0; i < total_objects; i++) {
    base = instance_find(obj_base,i);
    buffer_write(net_buff, buffer_u16, base.x);
    buffer_write(net_buff, buffer_u16, base.y);
    buffer_write(net_buff, buffer_string, base.team);
}

// set map buffer obstacle info
total_objects = instance_number(obj_obstacle);
buffer_write(net_buff, buffer_u16, total_objects);
for(var i = 0; i < total_objects; i++) {
    obstacle = instance_find(obj_obstacle,i);
    buffer_write(net_buff, buffer_u16, obstacle.x);
    buffer_write(net_buff, buffer_u16, obstacle.y);
}

// send the buffer
buffer_size = buffer_tell(net_buff);
network_send_packet( sock, net_buff, buffer_size );
