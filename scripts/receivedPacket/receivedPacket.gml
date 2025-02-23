// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function receivedPacket(_buffer){
	
	//first read
	var msgId = buffer_read(_buffer, buffer_u8);
	

	switch(msgId)
        
    
	{
        case network.established:
            
            var _socket = buffer_read(_buffer, buffer_u8);
            global.mysocket = _socket;
        
           buffer_seek(clientbuffer, buffer_seek_start, 0);                       //seek start
           buffer_write(clientbuffer, buffer_u8, network.established);            // type of buffer
           buffer_write(clientbuffer, buffer_string, obj_gameController.username);//values being sent
           
           network_send_packet(client, clientbuffer, buffer_tell(clientbuffer));
            break;
        
        case network.connect:
            var socket = buffer_read(_buffer, buffer_u8);
            var _x = buffer_read(_buffer, buffer_u16);
            var _y = buffer_read(_buffer, buffer_u16);
            var _username = buffer_read(_buffer, buffer_string);
            var _player = instance_create_depth(_x,_y,depth, obj_player);
            _player.socket = socket;
            _player.username = _username;
            ds_map_add(socket_to_instanceId, socket, _player);
        
            break;
        
        
        case network.player_joined:
            var _socket = buffer_read(_buffer, buffer_u8);
            var _x = buffer_read(_buffer, buffer_u16);
            var _y = buffer_read(_buffer, buffer_u16);
            var _username = buffer_read(_buffer, buffer_string);
            var _mock = instance_create_depth(_x,_y,depth, obj_mockPlayer);
            _mock.socket = _socket;
            _mock.username = _username;
            ds_map_add(socket_to_instanceId, _socket, _mock);
            break;
        
        case network.player_disconnect:
            var _socket = buffer_read(_buffer, buffer_u8);
            var _player = ds_map_find_value(socket_to_instanceId,_socket);
        
            with(_player){instance_destroy()}
                
            ds_map_delete(socket_to_instanceId, _socket)
        break;
        
		case network.move:
    		var _sock = buffer_read(_buffer, buffer_u8);
    		var moveX = buffer_read(_buffer, buffer_u16);
    		var moveY = buffer_read(_buffer, buffer_u16);
            
            _player = ds_map_find_value(socket_to_instanceId, _sock);
    		
    		_player.x = moveX;
    		_player.y = moveY;
    		break;
        
        case network.chat:  //on receipt of msg, add to overall list
            var _chat = buffer_read(_buffer, buffer_string);
            ds_list_insert(global.chat,0,_chat); // Inserts chat when received
            break;
		
	}
	
}
