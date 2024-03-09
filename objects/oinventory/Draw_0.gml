draw_sprite_stretched(sBackground,0,x-3,y-3,6+rowLength*36,12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36);

for (var i = 0; i < INVENTORY_SLOTS; i ++){
	var xx = x + (i mod rowLength) * 36 + 2;
	var yy = y + (i div rowLength) * 36 + 2;
	draw_sprite(sInvSlot,0,xx+16,yy+16);
	if (inventory[i] != -1){
		draw_sprite(global.sprites[i],0,xx+16,yy+16);
	}
}