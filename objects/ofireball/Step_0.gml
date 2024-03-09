if (place_meeting(x,y,pEnemy)){
	if (ds_list_find_index(global.currentUpgrades,oBurst) != -1){
		if (cansplit) {
			with(instance_create_layer(x,y,layer,oFireball)){
				cantHurt = place_meeting(x,y,pEnemy);
				speed = other.speed;
				direction = irandom_range(35,55);
				image_angle = direction;
			}
			with(instance_create_layer(x,y,layer,oFireball)){
				cantHurt = place_meeting(x,y,pEnemy);
				speed = other.speed;
				direction = irandom_range(125,145);
				image_angle = direction;
			}
			with(instance_create_layer(x,y,layer,oFireball)){
				cantHurt = place_meeting(x,y,pEnemy);
				speed = other.speed;
				direction = irandom_range(215,235);
				image_angle = direction;
			}
			with(instance_create_layer(x,y,layer,oFireball)){
				cantHurt = place_meeting(x,y,pEnemy);
				speed = other.speed;
				direction = irandom_range(305,325);
				image_angle = direction;
			}
		}
	}
}