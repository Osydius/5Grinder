buff = argument[0];
client = argument[1];
destinationx = argument[2];
destinationy = argument[3];

buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff , buffer_string, "move_player");
buffer_write(buff, buffer_s16, destinationx);
buffer_write(buff, buffer_s16, destinationy);
buffer_size = buffer_tell(buff);
network_send_packet(client, buff, buffer_size );
