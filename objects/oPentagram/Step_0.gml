if (spawnEnemy != undefined){
	rotateSpd *= random_range(1.0001,1.01);
	rotateSpd = clamp(rotateSpd,0,45);
	canRotate = true;
}


if (rotations >= 7){
	instance_destroy();
	instance_create_layer(x,y,layer,spawnEnemy);
}

if (rotations >= 5){
	part_particles_create(global.RedSmokeSystem,x,y,global.RedSmokeType,3);
}
