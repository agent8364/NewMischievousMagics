event_inherited();
resist[Type.BLUNT] = 1.5;
resist[Type.EXPLOSIVE] = 2;
resist[Type.POISON] = 0.5;
hp = 3;
backupHP = 5;
speed = 2;
dmg = 7;

takeDmg = function(type,amount) {
	if (hp <= 0){
		backupHP -= amount * resist[type];
	}else hp -= amount * resist[type];
	instance_create_layer(other.x,other.y,layer,oDmgNumber, {
		dmg : amount * resist[type]
	});
}