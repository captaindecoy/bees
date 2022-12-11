// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_instructions(){
	switch(room)
	{
		case rm_level_001:
			return "This is a bee hive\n and a worker bee.\nPlace the exact number\n of workers next to the hive.\n  Hives cannot be moved.";
		case rm_level_007:
			return "This is a queen bee\n and a drone bee.\nPlace the exact number\n of drones next to the queen.\n Queens can be moved.";
		case rm_level_013:
			return "Workers and drones both\n count towards hives.\nWorkers do not count\n towards queens!";
		case rm_level_019:
			return "Flowers need the exact number\n of workers next to them.\n  Drones and queens\n do not count.";
		case rm_level_025:
			return "This is an egg.\n It must be next to a\nhive or queen. It \n does not count towards\n the hive or queen number.";
		default:
			return "";// "OTHER";
	}
}