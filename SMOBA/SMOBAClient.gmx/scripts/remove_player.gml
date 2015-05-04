net_buff = argument[0];

player_name = buffer_read(net_buff,buffer_string);
player = ds_map_find_value(obj_client.players,player_name);
with(player){
    instance_destroy()
}
ds_map_delete(obj_client.players,player_name);
