if (sprite_index == sDemonMinibossPortal){
	sprite_index = sDemonMinibossPortalExit;
	x = random_range(128,room_width+128);
	y = random_range(128,room_height+128);
}else if (sprite_index == sDemonMinibossPortalExit){
	sprite_index = sDemonMiniboss;
}