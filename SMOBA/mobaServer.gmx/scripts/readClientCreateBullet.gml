// get arguments
net_buff = argument[0];
sock = argument[1];

// get required data
client_index = ds_list_find_index( obj_server.clients_sockets, sock);
create_x = ds_list_find_value(obj_server.clients_x, client_index);
create_y = ds_list_find_value(obj_server.clients_y, client_index);
create_direction = buffer_read(net_buff , buffer_s16 );
create_team = buffer_read(net_buff, buffer_string);

// create bullet object
bullet = ds_map_create();
ds_map_add(bullet,"x",create_x);
ds_map_add(bullet,"y",create_y);
ds_map_add(bullet,"direction",create_direction);
ds_map_add(bullet,"team",create_team);

//bullet_id = obj_server.bullet_count;
//obj_server.bullet_count++;
bullet_id = floor(random_range(0,65535));
if !ds_map_find_value(obj_server.bullets,bullet_id){
    ds_map_add(bullet,"id",bullet_id);
    ds_map_add(obj_server.bullets, bullet_id, bullet);
}

