speed = max(2 - (distance_to_object(oWizard) / 100), 0);
direction = point_direction(x,y,oWizard.x,oWizard.y);

if (seesXP == noone){
	x += 1000
	var nearXP = instance_nearest(x,y,oExp);
	if (instance_exists(nearXP)){
		seesXP = nearXP;
		nearXP.seesXP = id;
	}
	x -= 1000
}

if (distance_to_object(oWizard) > 200) and gravPoint.x != -1 and gravPoint.y != -1 and (abs(x-gravPoint.x)>2 || abs(y-gravPoint.y)>2){
	speed = (distance_to_point(gravPoint.x,gravPoint.y) / 100);
	speed = max (1,speed);
	direction = point_direction(x,y,gravPoint.x,gravPoint.y);
}



if (val >= 10) image_index = 2;
else if (val >= 5) image_index = 1;