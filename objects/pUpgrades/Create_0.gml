cursed = false;
if (!variable_instance_exists(self,"pos")) pos = 0;
textReset = false;
flameSprite = sFlame;
resize = function() {
	posX = (window_get_width() / 3) * (pos+1) - (sprite_width/2);
	posY = window_get_height() / 2 - (sprite_height/2);
}

resize();
frame = 0;