net_buff = argument[0];
sock = argument[1];

b_destinationx=buffer_read(net_buff , buffer_s16 );
b_destinationy=buffer_read(net_buff , buffer_s16 );

client = ds_map_find_value(obj_server.clients,sock);
client.player_destination_x = b_destinationx;
client.player_destination_y = b_destinationy;
