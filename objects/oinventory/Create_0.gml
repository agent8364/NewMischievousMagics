tiers = 5; //Common, Uncommon, Rare, Epic, Legendary
items = 8;
count = ds_grid_create(8,5);
ds_grid_set_region(count,0,0,8,5,0);
canShow = false;

x = room_width/2-(items/2)*36;
y = room_height/2-(tiers/2)*36

for(var xx=1; xx<= items; xx++){
	for(var yy=1; yy <= tiers;  yy++){
		var instance = instance_create_layer(x+(xx*36),y+(yy*36),layer,oInventorySlot);
		with (instance){
			firstX = oInventory.x+36;
			firstY = oInventory.y+36;
			event_user(1);
		}
	}
}