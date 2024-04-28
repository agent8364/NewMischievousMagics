resist = [1,1,1,1,1,1,1,1,1];

takeDmg = function(type,amount) {
	var takeDmg = true;
	if (instance_exists(oShield)){
		with (oShield){
			if (targetEnemy == other.id){
				takeDmg = false;
			}
		}
	}
	if (takeDmg){
		hp -= amount * resist[type];
		instance_create_layer(other.x,other.y,layer,oDmgNumber, {
			dmg : amount * resist[type]
		});
	}
}