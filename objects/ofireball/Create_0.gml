global.dmgType = Type.NORMAL;
switch (global.form){
	case sSlimeChunk:
		image_index = 1;
		dmg = global.baseDmg*(global.formRarity+1);
		break;
	case sBone:
		image_index = 0;
		dmg = (global.baseDmg * 1.5) *(global.formRarity+1);
		break;
}
switch (global.type){
	case sSlimeChunk:
		global.dmgType = Type.NORMAL;
		break;
	case sBone:
		global.dmgType = Type.BLUNT;
		break;
}

traveledDistance = 0;
range = oWizard.playerRange * 32;