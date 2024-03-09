///@desc Kill the Slime
ds_grid_set(global.kills,1,0,ds_grid_get(global.kills,1,0)-1);
if (ds_grid_get(global.kills,1,0) <= 0){
	global.maxKills *= 2;
	ds_grid_set(global.kills,1,0,global.maxKills)
	
	//Drops
	instance_create_layer(x,y,layer,oSlimeChunk);
}
instance_create_layer(x,y,layer,oExp);