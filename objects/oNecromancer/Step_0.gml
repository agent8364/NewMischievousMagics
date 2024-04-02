///@desc Do the Necromancer

if (hp <= 0) instance_destroy();

if (x >= (room_width/2)) image_xscale = -1; else image_xscale = 1;


if (summonCooldown <= 0){
	summonCooldown = room_speed * 25;
	var _x = choose(x, x + 48, x - 48);
	var _y = choose(y, y + 48, y - 48);
	while (_x == x and _y == y){
		_x = choose(x, x + 48, x - 48);
		_y = choose(y, y + 48, y - 48);
	}
	instance_create_layer(_x,_y,layer,oSkeleton);
}

if (spellCooldown <= 0){
	spellCooldown = room_speed*10;
	repeat(5){
		with(instance_create_layer(x,y,layer,oNecroblast)){
			speed = 10;
			direction = point_direction(x,y,oWizard.x+irandom_range(-20,20),oWizard.y+irandom_range(-20,20));
			image_angle = direction;
		}
	}
}

spellCooldown --;
summonCooldown --;