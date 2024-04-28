if (targetEnemy == self) or (!instance_exists(targetEnemy)){
	var prevX = x;
	var prevY = y;
	x +=10000;
	targetEnemy = instance_nearest(prevX,prevY,pEnemy);
	x -=10000;
}
var angle = targetEnemy;
direction = point_direction(x,y,angle.x,angle.y);
if (distance_to_object(targetEnemy) <= 5){
	speed = 0;
}else speed = 2;

if (hp <= 0){
	image_speed = 1;
}

