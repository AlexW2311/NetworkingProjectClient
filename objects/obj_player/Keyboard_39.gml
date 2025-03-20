/// @description Insert description here
// You can write your code in this editor
image_index = 2;
direction = image_index;
buffer_seek(con_client.clientbuffer, buffer_seek_start, 0);             //seek start
buffer_write(con_client.clientbuffer, buffer_u8, network.move);         // type of buffer
buffer_write(con_client.clientbuffer, buffer_u16, obj_player.x + 3);             //values being sent
buffer_write(con_client.clientbuffer, buffer_u16, obj_player.y);
//add dir
buffer_write(con_client.clientbuffer, buffer_u8, obj_player.direction);
network_send_packet(con_client.client, con_client.clientbuffer, buffer_tell(con_client.clientbuffer))