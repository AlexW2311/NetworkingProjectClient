/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite(dirSprite, image_index, x, y); // Draw overlay sprite
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x,y-48, username);