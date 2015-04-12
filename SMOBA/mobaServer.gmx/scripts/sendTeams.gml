// get arguments
buff = argument[0];
client_count = argument[1];

buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_string, "all_get_teams");

team_count = ds_list_size(obj_server.teams);

if team_count>0{
    buffer_write(buff, buffer_s16, team_count);
    
    for(i=0;i<team_count;i++){
        team_value = ds_list_find_value(obj_server.teams,i);
        buffer_write(buff, buffer_s16, team_value);
    }
}



