#region Player Movement
keyLeft = global.controls.getKeyLeft();
keyRight = global.controls.getKeyRight();
keyDown = global.controls.getKeyDown();
keyUp = global.controls.getKeyUp();
	
var hMove = (keyRight - keyLeft) * moveSpd;
var vMove = (keyDown - keyUp) * moveSpd;

hsp = hMove;
vsp = vMove;
#endregion
#region Player Shooting
if (mouse_check_button(mb_left)) and (cooldown <= 3){
	cooldown = 20;
	with (instance_create_layer(x,y,layer,oFireball)){
		speed = 10;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;
		cantHurt = 0;
		canSplit = true;
	}
}
cooldown --;
#endregion
#region Collisions
if (place_meeting(x+hsp,y,oBorder)){
	while(!place_meeting(x+sign(hsp),y,oBorder)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;
	
if (place_meeting(x,y+vsp,oBorder)){
	while(!place_meeting(x,y+sign(vsp),oBorder)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp
#endregion

if (xp >= neededXP){
	levelUp = true;
}

if (global.canExplode == false) and (global.data.baseBomb != 0){
	global.canExplode = true;
}