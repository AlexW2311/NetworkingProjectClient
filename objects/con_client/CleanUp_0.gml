
if (client != -1) {
    network_destroy(client); // Properly close the client socket
    client = -1; // Reset the socket variable
}
if (buffer_exists(clientbuffer)) {
    buffer_delete(clientbuffer);
}
