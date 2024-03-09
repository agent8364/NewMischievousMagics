// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetSprite(slotId){
	switch (slotId){
		case 0:
			return sBone;
			break;
		case 1:
			return sMushroomPiece;
			break;
		case 2: 
			return sSlimeChunk;
			break;
	}
}