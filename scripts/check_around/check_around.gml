// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_around(type){
	count = 0;
	count_list = ds_list_create();
	inst = instance_position(x + 36, y - 24, type);
	if(inst != noone)
	{
		count += inst.bee_count;
		if(ds_list_find_index(count_list, inst) == -1)
		{
			for(i = 0; i < inst.bee_count; i++)
			{
				ds_list_add(count_list, inst);
			}
		}
	}
	inst = instance_position(x, y - 64, type);
	if(inst != noone)
	{
		count += inst.bee_count;;
		if(ds_list_find_index(count_list, inst) == -1)
		{
			for(i = 0; i < inst.bee_count; i++)
			{
				ds_list_add(count_list, inst);
			}
		}
	}
	inst = instance_position(x - 36, y - 24, type);
	if(inst != noone)
	{
		count += inst.bee_count;;
		if(ds_list_find_index(count_list, inst) == -1)
		{
			for(i = 0; i < inst.bee_count; i++)
			{
				ds_list_add(count_list, inst);
			}
		}
	}
	inst = instance_position(x - 36, y + 24, type);
	if(inst != noone)
	{
		count += inst.bee_count;;
		if(ds_list_find_index(count_list, inst) == -1)
		{
			for(i = 0; i < inst.bee_count; i++)
			{
				ds_list_add(count_list, inst);
			}
		}
	}
	inst = instance_position(x, y + 64, type);
	if(inst != noone)
	{
		count += inst.bee_count;;
		if(ds_list_find_index(count_list, inst) == -1)
		{
			for(i = 0; i < inst.bee_count; i++)
			{
				ds_list_add(count_list, inst);
			}
		}
	}
	inst = instance_position(x + 36, y + 24, type);
	if(inst != noone)
	{
		count += inst.bee_count;;	
		if(ds_list_find_index(count_list, inst) == -1)
		{
			for(i = 0; i < inst.bee_count; i++)
			{
				ds_list_add(count_list, inst);
			}
		}
	}
	//return count;
	return count_list;
}


