// get arguments
net_buff = argument[0];
sock = argument[1];

bullet_id=buffer_read(net_buff , buffer_s16 )

bullet = ds_map_find_value(obj_server.bullets,bullet_id);
bullet_x = ds_map_find_value(bullet,"x");
ds_map_destroy(bullet);
ds_map_delete(obj_server.bullets,bullet_id);
