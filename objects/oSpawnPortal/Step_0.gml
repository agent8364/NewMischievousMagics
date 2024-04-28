if (alpha == 1) and (despawn == false){
	duration --;
	if (duration <= 0){
		despawn = true;
	}
	spawnCooldown --;
	if (spawnCooldown <= 0) and (image_index == 0){
		spawnCooldown = room_speed/2;
		instance_create_depth(x+16,y+32,-1,choose(oSkeleton,oSlime));
	}else if (spawnCooldown <= 0) and (image_index == 1){
		spawnCooldown = room_speed/2;
		repeat(7){
			with(instance_create_layer(x,y,layer,oNecroblast)){
				speed = 10;
				direction = point_direction(x,y,oWizard.x+irandom_range(-30,30),oWizard.y+irandom_range(-30,30));
				image_angle = direction;
			}
		}
	}
}else if (despawn == false){
	alpha += (1/room_speed);
}else if (despawn == true){
	alpha -= (1/room_speed);
}

if (alpha == 0) and (despawn){
	instance_destroy();
}