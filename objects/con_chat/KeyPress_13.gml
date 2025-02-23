/// @description Insert description here
// You can write your code in this editor
//Flips active chat boolean on ENTER presses
if (activeChat = false){
    activeChat = true;
    keyboard_string = ""; // sets chat values to an empty string before player types
    chatText = "";
}else{
    //disable chat + send text to server
    activeChat = false;
    
    buffer_seek(con_client.clientbuffer, buffer_seek_start, 0);             
    buffer_write(con_client.clientbuffer, buffer_u8, network.chat);         
    buffer_write(con_client.clientbuffer, buffer_string, chatText);            
    
    network_send_packet(con_client.client, con_client.clientbuffer, buffer_tell(con_client.clientbuffer)); //send package
}