net_buff = argument[0];

total_bullets = buffer_read(net_buff,buffer_u16);
bullet_key = ds_map_find_first(obj_client.bullets);
for(var i = 0; i < total_bullets; i++) {
    b_id = buffer_read(net_buff, buffer_s16);
    b_x = buffer_read(net_buff, buffer_s16);
    b_y = buffer_read(net_buff, buffer_s16);
    b_angle = buffer_read(net_buff, buffer_s16);
    
    if(ds_map_find_value(obj_client.bullets,b_id) != undefined){
        bullet = ds_map_find_value(obj_client.bullets,b_id);
    } else {
        bullet = instance_create(p_x,p_y,obj_bullet);
        ds_map_add(obj_client.bullets,b_id,bullet);
    }
    
    bullet.bullet_id = b_id;
    bullet.bullet_x = b_x;
    bullet.bullet_y = b_y;
    bullet.bullet_direction = b_angle;
    
    bullet_key = ds_map_find_next(obj_client.bullets,bullet_key);
}
