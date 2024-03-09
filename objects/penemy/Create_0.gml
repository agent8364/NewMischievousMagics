resist = [1,1,1,1,1,1,1,1,1];

takeDmg = function(type,amount) {
	hp -= amount * resist[type];
	instance_create_layer(other.x,other.y,layer,oDmgNumber, {
		dmg : amount * resist[type]
	});
}