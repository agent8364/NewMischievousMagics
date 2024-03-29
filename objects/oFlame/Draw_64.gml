resize = function() {
	posX = (window_get_width() / 3) * (pos+1);
	posY = window_get_height() / 2;
}

resize();

draw_sprite(sprite_index,image_index,posX,posY);