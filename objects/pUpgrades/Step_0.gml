if (mouse_in_range_gui(posX,posY, sprite_width, sprite_height)){
	if (mouse_check_button_pressed(mb_left)){
		instance_activate_all();
		clicked();
		instance_destroy(oUpgradeText);
		instance_destroy(pUpgrades);
		if (instance_exists(oCursedFlame)) instance_destroy(oCursedFlame);
		if (instance_exists(oFlame)) instance_destroy(oFlame);
	}
	if (!textReset){
		if (cursed){
			with(oUpgradeText){
				image_index = 1;
				draw_set_color(c_black);
			}
		}
		global.text = desc;
		textReset = true;
	}
}else if (textReset){
	textReset = false;
	global.text = "";
	with(oUpgradeText){
		image_index = 0;
		draw_set_color(c_white);
	}
}

frame += (14/60);

if (frame >= 7){
	frame = 0;
}