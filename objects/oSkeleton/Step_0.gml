var angle = point_direction(x,y,oWizard.x,oWizard.y);
direction = angle;

if (alarm[0] <= 0) alarm[0] = room_speed * irandom_range(2,5);

if (backupHP <= 0){
	instance_destroy();
}

if (hp <= 0) {
	image_speed = 0;
	if (alarm[3] <= -1){
		alarm[3] = room_speed * 3;
		sprite_index = sSkeletonPile;
		speed = 0;
	}
	alarm[0] ++;
	alarm[1] ++;
}