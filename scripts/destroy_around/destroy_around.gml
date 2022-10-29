// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_around(){
	inst = instance_place(x + 32, y - 4, obj_block_number);
	if(inst != noone && inst.image_index == 1)
	{
		inst.to_destroy = true;	
	}
	inst = instance_place(x + 16, y - 4, obj_block_number);
	if(inst != noone && inst.image_index == 1)
	{
		inst.to_destroy = true;			
	}
	inst = instance_place(x - 4, y - 4, obj_block_number);
	if(inst != noone && inst.image_index == 1)
	{
		inst.to_destroy = true;			
	}
	inst = instance_place(x - 4, y + 36, obj_block_number);
	if(inst != noone && inst.image_index == 1)
	{
		inst.to_destroy = true;		
	}
	inst = instance_place(x + 16, y + 36, obj_block_number);
	if(inst != noone && inst.image_index == 1)
	{
		inst.to_destroy = true;		
	}
	inst = instance_place(x + 32, y + 36, obj_block_number);
	if(inst != noone && inst.image_index == 1)
	{
		inst.to_destroy = true;		
	}
}

/*
draw_line(x, y, x + 18, y - 12);
	draw_line(x, y, x, y - 32);
	draw_line(x, y, x - 18, y - 12);
	draw_line(x, y, x  - 18, y + 12);
	draw_line(x, y, x, y + 32);
	draw_line(x, y, x + 18, y + 12);
	*/