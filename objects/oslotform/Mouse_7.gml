
if (select != noone){
	if (select.count >= 1){
		select.image_index = 0;
		ds_grid_set(oInventory.count,select.posX,select.posY,select.count-1);
		item = select.posX;
		rarity = select.posY;
		if (item == 0){
			sprite = sSlimeChunk;
			global.form =  sSlimeChunk;
		}else if (item == 1){
			sprite = sBone;
			global.form =  sBone;
		}else if (item == 2){
			sprite = sMushroomPiece;
			global.form =  sMushroomPiece;
		}
		global.formRarity = rarity;
		select = noone;
	}
}