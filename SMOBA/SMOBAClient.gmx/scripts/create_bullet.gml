buff = argument[0];
client = argument[1];
destination_x = argument[2];
destination_y = argument[3];

buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff , buffer_string, "create_bullet");
buffer_write(buff, buffer_s16, destination_x);
buffer_write(buff, buffer_s16, destination_y);
buffer_size = buffer_tell(buff);
network_send_packet(client, buff, buffer_size );
