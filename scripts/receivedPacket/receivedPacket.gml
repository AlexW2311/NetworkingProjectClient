// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function receivedPacket(_buffer){
	
	//first read
	var msgId = buffer_read(_buffer, buffer_u8);
	

	switch(msgId)
        
    
	{
        
        
        case network.connect:
            var socket = buffer_read(_buffer, buffer_u8);
            var _x = buffer_read(_buffer, buffer_u16);
            var _y = buffer_read(_buffer, buffer_u16);
            
            var _player = instance_create_depth(_x,_y,depth, obj_player);
            _player.socket = socket;
            ds_map_add(socket_to_instanceId, socket, _player);
        
            break;
        
        
        case network.player_joined:
            var _socket = buffer_read(_buffer, buffer_u8);
            var _x = buffer_read(_buffer, buffer_u16);
            var _y = buffer_read(_buffer, buffer_u16);
                        
            var _mock = instance_create_depth(_x,_y,depth, obj_mockPlayer);
            _mock.socket = _socket;
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
		
	}
	
}
