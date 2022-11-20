/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_yellow);
if(number > 0)
{
	//draw_text(x - sprite_width/8, y - sprite_height/3, string(number));
	if(complete == true)
	{
		draw_text(x, y, "X");	
	}
}
if(selected == true)
{
	draw_rectangle(x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2, true);
}


