/// @description Insert description here
// You can write your code in this editor
//if(complete == true)
//{
//	cell_sprite = 1;	
//}
event_inherited();
/*
if(state == 0)
{
	if(number > 0)
	{
		result = check_around();
		count = ds_list_size(result);
		show_debug_message("Number:" + string(number) + " Count: " + string(count));
		if(count == number)
		{
			complete = true;
			obj_game.complete++;
		}
		else
		{
			complete = false;
			obj_game.complete--;
		}
		ds_list_destroy(result);
		processed = true;
		obj_game.processed_count++;
	}
	else
	{
		processed = true;
		obj_game.processed_count++;
	}
}

if(state == 1)
{
	if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
	{
		if(obj_game.selections == 1 && selected = true) // deselect
		{
			selected = false;
			if(obj_game.selection1 == self)
			{
				obj_game.selection1 = noone;
			}
			else
			{
				obj_game.selection2 = noone;	
			}
			obj_game.selections--;
		}
		else if(obj_game.selections == 1 && selected = false)
		{
			if(point_distance(x,y, obj_game.selection1.x, obj_game.selection1.y) < 40)
			{
				selected = true;
				obj_game.selection2 = self;
				obj_game.selections++;
			}
		}
		else if(obj_game.selections < 2) // select
		{
			selected = true;
			if(obj_game.selection1 == noone)
			{
				obj_game.selection1 = self;
			}
			else
			{
				obj_game.selection2 = self;	
			}
			obj_game.selections++;
		}
	}
}
*/


