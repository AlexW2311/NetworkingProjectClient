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
        
        break;
        
        
		case network.move:
		
		var moveX = buffer_read(_buffer, buffer_u16);
		var moveY = buffer_read(_buffer, buffer_u16);
		
		obj_player.x = moveX;
		obj_player.y = moveY;
		break;
		
	}
	
}
