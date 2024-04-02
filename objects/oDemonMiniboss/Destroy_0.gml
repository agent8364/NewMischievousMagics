///@desc Kill the Necromancer
instance_create_layer(x,y,layer,oExp);

if (ds_list_find_index(global.currentUpgrades,oReinvigorate) != -1) and (irandom_range(1,20)==20){
	instance_create_layer(x+random_range(-16,16),y+random_range(-16,16),layer,oBloodOrb);

}