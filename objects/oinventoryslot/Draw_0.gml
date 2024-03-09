draw_self();

if (visible == true){
	if (posX == 0){
		sprite = sSlimeChunk;
	}else if (posX == 1){
		sprite = sBone;
	}else if (posX == 2){
		sprite = sMushroomPiece;
	}else sprite = undefined;
	
	if (sprite != undefined) draw_sprite(sprite,posY,x,y);
	
	count = ds_grid_get(oInventory.count,posX,posY);
	draw_text(x,y,count);
}