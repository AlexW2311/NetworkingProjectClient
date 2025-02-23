/// @description Insert description here
// You can write your code in this editor
global.chat = ds_list_create();
global.chatColor = ds_list_create();
ds_list_add(global.chat, "Is","There","text","here","or what"); //The global.chat needs empty strings in the list tp prevent errors
activeChat = false; //Boolean switch
chatDisplayMax = 5;
chatText = "";
