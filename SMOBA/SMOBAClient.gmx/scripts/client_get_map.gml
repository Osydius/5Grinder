buffer = argument[0];
client_socket = argument[1];

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer , buffer_string, "client_get_map");
buffer_size = buffer_tell(buffer);
network_send_packet(client_socket, buffer, buffer_size );
