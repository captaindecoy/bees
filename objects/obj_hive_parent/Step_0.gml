/// @description Insert description here
// You can write your code in this editor
if(complete == true)
{
	cell_sprite = 1;	
}
else
{
	cell_sprite = 0;	
}
if(state == 0)
{
	if(number > 0 && processed != true)
	{
		result = check_around(obj_bee_parent);
		count = ds_list_size(result);
		show_debug_message("Number:" + string(number) + " Count: " + string(count));
		if(count == number)
		{
			complete = true;
			//cell_sprite = 1;
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


// Inherit the parent event
event_inherited();

