/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (activeChat = true){
    draw_set_color(c_blue);
    draw_text(100, 400, "> " + chatText);
}
else{
    draw_set_color(c_gray);
    draw_text(100,400, "> ");
}