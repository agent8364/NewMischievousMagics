image_speed = 0;

var dist = distance_to_object(oWizard);
var ticks = dist/6;
var wizX = oWizard.x;
var wizY = oWizard.y;
var hMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var pPosX = wizX + hMove*oWizard.moveSpd*ticks;
var pPosY = wizY + vMove*oWizard.moveSpd*ticks;
var angleX = lerp(wizX,pPosX,random_range(0.75,1.25));
var angleY = lerp(wizY,pPosY,random_range(0.5,1));
//var P_angle = point_direction(wizX,wizY,wizX+hMove,wizY+vMove);


instance_create_layer(x,y,layer,oSkeletonBone, {
	pPosX : pPosX,
	pPosY : pPosY,
	angleX : angleX,
	angleY : angleY,
	speed : 6,
	direction : point_direction(x,y,angleX,angleY)
});

speed = 0;
alarm[1] = room_speed*1; 