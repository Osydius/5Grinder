// get arguments
net_buff = argument[0];
sock = argument[1];

//get required data
client_index = ds_list_find_index( obj_server.clients_sockets, sock);
client_x=buffer_read(net_buff , buffer_s16 )
client_y=buffer_read(net_buff , buffer_s16 )
client_health=buffer_read(net_buff , buffer_s16 )

// update client info
client = ds_list_find_value(obj_server.clients,)
ds_list_replace(obj_server.clients_x, client_index, b_x)
ds_list_replace(obj_server.clients_y, client_index, b_y)
ds_list_replace(obj_server.clients_health, client_index, b_health)
