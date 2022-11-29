/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_yellow);
//draw_rectangle(right_border, top_border, left_border, bottom_border, true);
/*
draw_text(x, y, "Game State: " + string(state));
draw_text(x, y + 14 , "Blocks: " + string(instance_number(obj_block_number)));
draw_text(x, y + 28 , "Complete: " + string(complete_count));
draw_text(x, y + 42 , "Complete list: " + string(ds_list_size(complete_list)));
*/
//draw_text(x, y + 56, room_get_name(room));
draw_text(x, y, room_get_name(room));
if(state != 2)
{
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 64, instructions);
	draw_set_halign(fa_left);
}

//draw_text(x, y + 70 , "Processed: " + string(processed_count)); //not actually helping

if(state == 2)
{
	draw_set_halign(fa_center);
	draw_text_transformed(room_width / 2, 64 /*room_height / 6*/, "COMPLETE!", 3, 3, 0);
	draw_text(room_width / 2, 128
	/*room_height / 6*/, "Click the left mouse");
	draw_text(room_width / 2, 144, "button to continue.");
	draw_set_halign(fa_left);
}