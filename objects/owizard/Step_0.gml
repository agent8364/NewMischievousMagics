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
	if (mouse_check_button(mb_left)) and (cooldown <= 1) and (global.gameState != States.MENU){
		cooldown = maxCooldown;
		var dir = -1;
		var count = projectileCount;
		var shotAngle = (min(maxSpread,multishotSpread / (projectileCount-1))) * dir;
		while (count > 0){
			with (instance_create_layer(x,y,layer,oFireball)){
				speed = other.bulletSpeed;
				direction = point_direction(x,y,mouse_x,mouse_y);
				if (count > 1){
					dir = 1;
					if (count div 2 == count / 2){
						dir = -1;
					}
					direction += ((count div 2) * shotAngle) * dir;
				}
				image_angle = direction;
				cantHurt = 0;
				canSplit = true;
				sprite_index = other.projectileType;
				
			}
			count --;
		}
	}
}else{
	if (mouse_check_button(mb_left)){
		currentCharge = min(maxCharge,currentCharge + chargeRate);
	}
	if (mouse_check_button_released(mb_left)) or (currentCharge >= maxCharge){
		repeat (projectileCount){
			with (instance_create_layer(x,y,layer,oFireball)){
				speed = other.bulletSpeed/2;
				direction = point_direction(x,y,mouse_x,mouse_y) + ((max(other.maxSpread,other.multishotSpread / (other.projectileCount-1))) * dir);
				image_angle = direction;
				cantHurt = 0;
				canSplit = true;
				dmg = ((global.data.baseDmg + global.addativeDmg) * (global.dmgMultiplier)) * (other.maxCharge);
				image_xscale = max(other.currentCharge,0.5);
				image_yscale = max(other.currentCharge,0.5);
				sprite_index = other.projectileType;
			}
			currentCharge = 0;
		}
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