if (place_meeting(x,y,pEnemy)) and (instance_nearest(x,y,pEnemy) != oPentagram){
	if (instance_nearest(x,y,pEnemy) != cantHurt){
		instance_nearest(x,y,pEnemy).takeDmg(global.dmgType,dmg);
		instance_destroy();
		if (ds_list_find_index(global.currentUpgrades,oBurst) != -1){
			if (canSplit) {
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(35,55);
						image_angle = direction;
						canSplit = false;
				}
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt =instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(125,145);
						image_angle = direction;
						canSplit = false;
				}
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(215,235);
						image_angle = direction;
						canSplit = false;
				}
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(305,325);
						image_angle = direction;
						canSplit = false;
				}
			}
		}
	}
}