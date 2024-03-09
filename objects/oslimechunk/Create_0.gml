image_speed = 0;

legChance = 0.1; //out of 10,000
epicChance = legChance+1;
rareChance = epicChance+10;
uncommonChance = rareChance+100;
commonChance = uncommonChance+1000;

var chance = legChance + epicChance + rareChance + uncommonChance + commonChance;
show_debug_message(string(chance));
var rand = irandom_range(1,chance);
show_debug_message(string(rand));

if (rand == legChance){ //Legendary
	image_index = 4;
}else if (rand <= epicChance){
	image_index = 3;
}else if (rand <= rareChance){
	image_index = 2;
}else if (rand <= uncommonChance){
	image_index = 1;
}else if (rand <= commonChance){
	image_index = 0;
}