inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;


mouseOver = function(){
	slotHover = -1;
	inventoryHover = -1;
	
	var mx = mouse_x;
	var my = mouse_y;
	with(oInventory){
		if (point_in_rectangle(mx,my,x-3,y-3,6+rowLength*36,12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36){
			for(var i = 0; i < INVENTORY_SLOTS; i ++){
				var xx = x + (i mod rowLength) * 36 + 2;
				var yy = y + (i div rowLength) * 36 + 2;
				if (point_in_rectangle(mx,my,xx,yy,xx+16,yy+16)){
					other.slotHover = i;
					other.inventoryHover = i;
				}
			}
		}
	}
}
stateFree = function(){
	mouseOver();
	if (mouse_check_button(mb_left)) and (slotHover != -1) and (inventoryHover.inventory[slotHover] != -1){
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}
stateDrag = function(){
	mouseOver();
	if (!mouse_check_button(mb_left)){
		if (slotHover != -1) InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover);
		
		state = stateFree;
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1;
	}
}

state = stateFree;