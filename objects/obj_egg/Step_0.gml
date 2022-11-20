/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//event_inherited();
if(state == 0)
{
	if(number > 0)
	{
		//Think there might be an issue with the checkaround script tallying count but not returning it, 
		//ended up splitting up what I assumed would be reusable variabls below
		//count = 0;
		result1 = egg_check_around(obj_hive_parent);
		count1 = ds_list_size(result1);
		show_debug_message("First count: " + string(count1));
		result2 = egg_check_around(obj_queen_parent);
		count2 = ds_list_size(result2);
		show_debug_message("Second count: " + string(count2));
		
		//show_debug_message("Number:" + string(number) + " Count: " + string(count));
		if((count1 + count2) >= number)
		{
			complete = true;
			//obj_game.complete_count++;
			if(ds_list_find_index(obj_game.complete_list, self) == -1)
			{
				ds_list_add(obj_game.complete_list, self);	
			}
		}
		else
		{
			complete = false;
			//obj_game.complete_count--;
			complete_check = ds_list_find_index(obj_game.complete_list, self);
			if(complete_check != -1)
			{
				ds_list_delete(obj_game.complete_list, complete_check);
			}
		}
		ds_list_destroy(result1);
		ds_list_destroy(result2);
		processed = true;
		obj_game.processed_count++;
	}
	else
	{
		processed = true;
		obj_game.processed_count++;
	}
}

if(state == 1 && movable == true)
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
			//if(point_distance(x,y, obj_game.selection1.x, obj_game.selection1.y) < sprite_width + 10)
			//{
				selected = true;
				obj_game.selection2 = self;
				obj_game.selections++;
			//}
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