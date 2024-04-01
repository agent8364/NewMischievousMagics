///@desc Kill the Slime
ds_grid_set(global.kills,1,0,ds_grid_get(global.kills,1,0)-1);
if (ds_grid_get(global.kills,1,0) <= 0){
	global.maxKills *= 2;
	ds_grid_set(global.kills,1,0,global.maxKills)
	
	//Drops
	instance_create_layer(x,y,layer,oSlimeChunk);
}
instance_create_layer(x,y,layer,oExp);

if (ds_list_find_index(global.currentUpgrades,oReinvigorate) != -1) and (irandom_range(1,20)==20){
	instance_create_layer(x+random_range(-16,16),y+random_range(-16,16),layer,oBloodOrb);

}