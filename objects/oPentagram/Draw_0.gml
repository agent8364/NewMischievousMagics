draw_self();


if (canRotate){
	image_angle += rotateSpd;
	if (image_angle >= 359){
		image_angle = 0;
		rotations ++;
	}
}