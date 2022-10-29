/// @description Insert description here
// You can write your code in this editor
board_width = 256;
board_height = 448;

right_border = room_width/2 + (board_width / 2);
left_border = room_width/2 - (board_width / 2);
top_border = room_height/2 - (board_height / 2);
bottom_border = room_height/2 + (board_height / 2);

state = 0;
/*
if(room == rm_test)
{
	inst1 = instance_create_layer(left_border + 32, bottom_border - 32, "Instances", obj_block_number);
	inst2 = instance_create_layer(left_border + 80, bottom_border - 32, "Instances", obj_block_number);
	inst3 = instance_create_layer(left_border + 56, bottom_border - 48, "Instances", obj_block_number);
	inst4 = instance_create_layer(left_border + 104, bottom_border - 48, "Instances", obj_block_number);
	inst5 = instance_create_layer(left_border + 128, bottom_border - 32, "Instances", obj_block_number);
	inst6 = instance_create_layer(left_border + 32, bottom_border - 64, "Instances", obj_block_number);

	inst1.number = 3;
	inst2.number = 5;
	inst3.image_index = 0;
	inst4.image_index = 1;
	inst5.image_index = 1;
	inst6.image_index = 1;
}
*/
selections = 0;
selection1 = noone;
selection2 = noone;

processed_count = 0;

complete_count = 0;
complete_list = ds_list_create();