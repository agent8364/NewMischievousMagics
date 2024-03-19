if (image_index == cluster){
	repeat(choose(1,2)){
		with (instance_create_layer(x + (random_range(22,28)*choose(-1,1)),y + (random_range(22,28)*choose(-1,1)),layer,oExplosion)){
			if (other.clusterTimes > 0){
				clusterTimes = other.clusterTimes - 1;
			}else {
				cluster = -1;
			}
			dmg = other.dmg;
		}
	}
}
if (place_meeting(x,y,pEnemy)){
	global.enemy = instance_place(x,y,pEnemy);
	if (global.enemy != oPentagram) and (instance_exists(global.enemy)){
		show_debug_message(cantHit)
		var index = array_find_index(cantHit,function(_val, _ind) {
			return _val == global.enemy;
		});
		if (index == -1){
			global.enemy.takeDmg(Type.EXPLOSIVE,dmg);
			array_push(cantHit,global.enemy);
		}
	}
}
image_alpha = 1 - ((image_index-1) * 0.1);