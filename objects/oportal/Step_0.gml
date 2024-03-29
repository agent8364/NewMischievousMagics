///@desc Act out the Portal
//Animate based on player distance
var dist = distance_to_object(oWizard);
if (dist <= 512){
	image_speed = ((512 - dist)/256)+1;
}else image_speed = 1;
//Activate when the E key is pressed
if (global.controls.getKeyUse()) and (dist <= 64) and (global.data.baseDmg > 0){
	oTag.text = "";
	room_goto_next();
	SaveData();
}else if (global.data.baseDmg == 0) and (global.controls.getKeyUse()) and (dist <= 64){
	oTag.timer = room_speed * 3;
	oTag.fade = 1;
	oTag.text = "You need at least 1 damage to enter! Use the Alchemy Table to increase your damage!";
}