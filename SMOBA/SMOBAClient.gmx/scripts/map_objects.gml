net_buff = argument[0];

room_width = buffer_read(net_buff, buffer_u16);
room_height = buffer_read(net_buff, buffer_u16);

total_bases = buffer_read(net_buff, buffer_u8);
for(var i = 0; i < total_bases; i++) {
    base_x = buffer_read(net_buff, buffer_u16);
    base_y = buffer_read(net_buff, buffer_u16);
    base_team = buffer_read(net_buff, buffer_string);
    
    if(base_team == "teamblue"){
        instance_create(base_x,base_y,obj_waterplanet);
    } else {
        instance_create(base_x,base_y,obj_lavaplanet);
    }
}

total_obstacles = buffer_read(net_buff, buffer_u16);
for(var i = 0; i < total_obstacles; i++) {
    obstacle_x = buffer_read(net_buff, buffer_u16);
    obstacle_y = buffer_read(net_buff, buffer_u16);
    
    instance_create(obstacle_x,obstacle_y,obj_obstacle);
}

obj_client.alarm[0] = 1;
