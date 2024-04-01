traveledDistance = 0;
range = oWizard.playerRange * 32;
image_speed = 0;

dmg = global.data.baseDmg * global.dmgMultiplier;

if (ds_list_find_index(global.currentUpgrades,oBombShots)!=-1){
	sprite_index = sIceBomb;
	image_speed = 1;
}