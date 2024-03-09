if (instance_exists(other)) and (!place_meeting(x,y,oPentagram)) and (!place_meeting(x,y,canthurt)){
	other.takeDmg(global.dmgType,dmg);
	instance_destroy();
	canthurt = instance_nearest(x,y,pEnemy);
	if (ds_list_find_index(global.currentUpgrades,oBurst) != -1){
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 45 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 135 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 225 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 315 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
	}
	if (ds_list_find_index(global.currentUpgrades,oOctoBurst) != -1){
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 90 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 180 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : 270 + random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
		instance_create_layer(other.x,other.y,layer,oFireball, {
			speed : 10,
			direction : random_range(-10,10),
			image_angle : direction,
			cansplit : false,
			canthurt : instance_nearest(x,y,pEnemy)
		});
	}
}
