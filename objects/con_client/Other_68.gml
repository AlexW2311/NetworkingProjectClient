var type_event = ds_map_find_value(async_load, "type");
var buffer;
switch(type_event)
{
	case network_type_data:
	buffer = ds_map_find_value(async_load, "buffer");
	buffer_seek(buffer, buffer_seek_start, 0);
	receivedPacket(buffer);
	break;
	
	case network_type_disconnect:
    var socket = ds_map_find_value(async_load, "socket");
    if (socket != -1) 
	{
		network_destroy(socket);
		
    }
	
	break;

}