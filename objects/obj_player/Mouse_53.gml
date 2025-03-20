buffer_seek(con_client.clientbuffer, buffer_seek_start, 0);             //seek start
buffer_write(con_client.clientbuffer, buffer_u8, network.move);         // type of buffer
buffer_write(con_client.clientbuffer, buffer_u16, mouse_x);             //values being sent
buffer_write(con_client.clientbuffer, buffer_u16, mouse_y);
//add direction change
buffer_write(con_client.clientbuffer, buffer_u8, obj_player.direction);
network_send_packet(con_client.client, con_client.clientbuffer, buffer_tell(con_client.clientbuffer)); //send package