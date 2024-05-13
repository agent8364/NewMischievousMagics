if (place_meeting(x,y,pEnemy)) and (!place_meeting(x,y,oPentagram)){
	if (instance_nearest(x,y,pEnemy) != cantHurt){
		instance_nearest(x,y,pEnemy).takeDmg(global.dmgType,dmg);
		instance_destroy();
		if (global.canExplode == false){
			var effect = instance_create_layer(x,y,layer,oHitEffect);
		}
		if (ds_list_find_index(global.currentUpgrades,oBurst) != -1){
			if (canSplit) {
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(35,55);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt =instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(125,145);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(215,235);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
				with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(305,325);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
				if (ds_list_find_index(global.currentUpgrades,oOctoBurst) != -1){
					with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(80,100);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
					with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt =instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(170,190);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
					with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(260,280);
						image_angle = direction;
						canSplit = false;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
					with(instance_create_layer(x,y,layer,oFireball)){
						cantHurt = instance_nearest(x,y,pEnemy)
						show_debug_message(string(cantHurt));
						speed = other.speed;
						direction = irandom_range(350,10);
						image_angle = direction;
						canSplit = true;
						dmg = other.dmg;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
				}
				}
			}
		}
		if (global.canExplode == true){
			Detonate(dmg,global.explosionRadius);
		}
	}
}
traveledDistance = distance_to_point(xstart,ystart);
if (traveledDistance >= range) {
	if (sprite_index = sIceBomb){
		Detonate(dmg,global.explosionRadius);
	}else{ instance_destroy(); }
} 