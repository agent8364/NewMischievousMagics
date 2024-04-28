event_inherited();
resist[Type.BLUNT] = 1.5;
resist[Type.EXPLOSIVE] = 2;
resist[Type.POISON] = 0.5;
resist[Type.FIRE] = 0.5;
hp = 10;
speed = 2;
image_speed = 0;
takeDmg = function(type,amount) {
	hp -= amount * resist[type];
	instance_create_layer(other.x,other.y,layer,oDmgNumber, {
		dmg : amount * resist[type]
	});
}

targetEnemy = self;