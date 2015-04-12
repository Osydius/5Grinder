// get arguments
net_buff = argument[0];
sock = argument[1];

// get required data
client_index = ds_list_find_index( obj_server.clients_sockets, sock);
create_x = ds_list_find_value(obj_server.clients_x, sock);
create_y = ds_list_find_value(obj_server.clients_y, sock);
create_direction = create_direction = buffer_read(net_buff , buffer_s16 );

// create bullet object
bullet = ds_map_create();
ds_map_add(bullet,"x",create_x);
ds_map_add(bullet,"y",create_y);
ds_map_add(bullet,"direction",create_direction);

bullet_id = current_time;
if !ds_map_find_value(obj_server.bullets,bullet_id) {
    ds_map_add(bullet,"id",bullet_id);
    ds_map_add(obj_server.bullets, bullet_id, bullet);
}


