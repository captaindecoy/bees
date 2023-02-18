/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_hex_blocks, cell_sprite, x, y);
draw_sprite(spr_flower, 0, x, y);
draw_set_color(c_black);
//draw_rectangle(x - 6, y - 6, x + 6, y + 6, false);
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, string(number));
draw_set_halign(fa_left);
draw_set_valign(fa_top);



