/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
{
	if(room == room_last)
	{
		room_goto(room_first);	
	}
	else
	{
		room_goto_next();
	}
}
if(state == 2 && mouse_check_button_pressed(mb_left))
{
	if(room == room_last)
	{
		room_goto(room_first);	
	}
	else
	{
		room_goto_next();
	}
}
if(keyboard_check_pressed(vk_space) || ds_list_size(complete_list) == complete_count)
{
	with(obj_block_number)
	{
		state = -1;	
	}
	
	state = 2;
}

if(state == 0)
{
	if(selections == 2)
	{
		temp_x = selection1.x;
		temp_y = selection1.y;
		selection1.x = selection2.x;
		selection1.y = selection2.y;
		selection2.x = temp_x;
		selection2.y = temp_y;
		selection1.selected = false;
		selection2.selected = false
		selection1 = noone;
		selection2 = noone;
		selections = 0;
	
		with(obj_block_number)
		{
			//processed = false;
			state = 0;	
		}
		
		state = 1;
	}
}
if(state == 1)
{
	if(obj_game.processed_count == instance_number(obj_block_number))
	{
		with(obj_block_number)
		{
			//TODO (Fixed 10/17/2022): to_destroy should not be happening anymore, is this functional?
			//if(to_destroy == true)
			//{
			//	instance_destroy();	
			//}
			//else
			//{
				processed = false;
				state = 1;
			//}
		}
		processed_count = 0;
		state = 0;
	}
}

if(keyboard_check_pressed(ord("R")))
{
	room_restart();	
}