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
if (ds_list_find_index(global.currentUpgrades,oChargeShot)==-1){
	if (mouse_check_button(mb_left)) and (cooldown <= 1){
		cooldown = maxCooldown;
		with (instance_create_layer(x,y,layer,oFireball)){
			speed = other.bulletSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			image_angle = direction;
			cantHurt = 0;
			canSplit = true;
		}
	}
}else{
	if (mouse_check_button(mb_left)){
		currentCharge = min(maxCharge,currentCharge + chargeRate);
	}
	if (mouse_check_button_released(mb_left)) or (currentCharge >= maxCharge){
		with (instance_create_layer(x,y,layer,oFireball)){
			speed = 10*other.currentCharge;
			direction = point_direction(x,y,mouse_x,mouse_y);
			image_angle = direction;
			cantHurt = 0;
			canSplit = true;
			dmg = (global.data.baseDmg + global.addativeDmg) * (global.dmgMultiplier) * (other.maxCharge);
			image_xscale = other.currentCharge;
			image_yscale = other.currentCharge;
		}
		currentCharge = 0		
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
}//else levelUp = false;

if (global.canExplode == false) and (global.data.baseBomb != 0){
	global.canExplode = true;
}

if (blendTime > 0) {
blendTime --;
}else{
	blend = c_white;
}

if (currentIFrames > 0){
	currentIFrames --;
}