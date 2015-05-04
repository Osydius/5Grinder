net_buff = argument[0];
sock = argument[1];

// get buffer data
b_name=buffer_read(net_buff , buffer_string );
b_x=buffer_read(net_buff , buffer_s16 );
b_y=buffer_read(net_buff , buffer_s16 );
b_health=buffer_read(net_buff , buffer_s16 );
b_team=buffer_read(net_buff, buffer_string);
b_captain=buffer_read(net_buff, buffer_string);
b_ship=buffer_read(net_buff, buffer_string);
b_direction = buffer_read(net_buff, buffer_s16);

// setup the client
clients = obj_server.clients;
new_client = instance_create(b_x,b_y,obj_player);
new_client.player_name = b_name;
new_client.player_x = b_x;
new_client.player_y = b_y;
new_client.player_direction = b_direction;
new_client.player_health = b_health;
new_client.player_team = b_team;
new_client.player_captain = b_captain;
new_client.player_ship = b_ship;

// add client to clients map
ds_map_add(clients,sock,new_client);
