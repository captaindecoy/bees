/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_movable_cell, cell_sprite, x, y);
draw_sprite(spr_queen, 0, x, y);
//draw_set_color(c_black);
//draw_rectangle(x - 8, y - 8, x + 8, y + 8, false);
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y - 3, string(number));
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(selected == true)
{
	draw_rectangle(x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2, true);
}

