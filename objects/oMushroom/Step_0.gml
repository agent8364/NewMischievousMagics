timer --;
if (timer <= 0){
	if (distance_to_object(oMushroom)>range){
		var _x = x + lengthdir_x(range,random(359));
		var _y = y + lengthdir_y(range,random(359));
		part_particles_create(global.GreenSmokeSystem,_x,_y,global.GreenSmokeType,10);
		instance_create_layer(_x-16,_y-16,layer,oMushroom);
	}
}else{
	range += 0.1;
}

if (hp <= 0){
	instance_destroy();
}

if (distance_to_object(oWizard)<=range) and (currentPauseTime <= 0){
	currentPauseTime = pauseTime;
	oWizard.hp -= dmg;
}