port = 5001;
ipAddress = "127.0.0.1";


enum network {established, connect, player_joined, player_disconnect, move, chat}

// Creates a client socket
client = network_create_socket(network_socket_tcp);

// Connects to the server
connected = network_connect(client, ipAddress, port);

if (connected = -1) {
    show_debug_message("Error: Failed to connect to server at " + ipAddress + ":" + string(port));
} else {
    show_debug_message("Connected to server at " + ipAddress + ":" + string(port));
}

// Create client buffer
clientbuffer = buffer_create(1024, buffer_grow, 1);
socket_to_instanceId = ds_map_create();

