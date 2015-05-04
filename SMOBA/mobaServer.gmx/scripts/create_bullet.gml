net_buff = argument[0];
sock = argument[1];

b_destination_x=buffer_read(net_buff , buffer_s16 );
b_destination_y=buffer_read(net_buff , buffer_s16 );

player = ds_map_find_value(obj_server.clients,sock);
b_team = player.player_team;
b_id = floor(random_range(0,65535));

bullet = instance_create(player.player_x,player.player_y,obj_bullet);
bullet.bullet_id = b_id;
bullet.bullet_x = player.player_x;
bullet.bullet_y = player.player_y;
bullet.bullet_damage = 5;
bullet.bullet_team = b_team;
bullet.bullet_destination_x = b_destination_x;
bullet.bullet_destination_y = b_destination_y;


if !ds_map_find_value(obj_server.bullets,b_id){
    ds_map_add(obj_server.bullets,b_id,bullet);
}
