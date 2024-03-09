// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Debug(){
	draw_text(50,50,"Wave: " + string(global.wave));
	draw_text(50,62,"Number of Enemies: " + string(instance_number(pEnemy)));
	if (instance_exists(pEnemy)){
		for(var i = 0; i < instance_number(pEnemy); i++){
			draw_text(58,74+(i*12),"X: " + string(instance_find(pEnemy,i).x) + " Y: " + string(instance_find(pEnemy,i).y));
		}
	}
}
function DebugLines(){
	if (instance_exists(pEnemy)){
		for(var i = 0; i < instance_number(pEnemy); i++){
			draw_line(oWizard.x,oWizard.y,instance_find(pEnemy,i).x,instance_find(pEnemy,i).y);
		}
	}
}