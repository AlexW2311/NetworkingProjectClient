/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
for (var i = 0; i<chatDisplayMax; i++){
    draw_text(100, 360 - (16*i), ds_list_find_value(global.chat, i));
}
if (activeChat = true){
    draw_set_color(c_blue);
    draw_text(100, 400, "> " + chatText);
}
else{
    draw_set_color(c_gray);
    draw_text(100,400, "> ");
}