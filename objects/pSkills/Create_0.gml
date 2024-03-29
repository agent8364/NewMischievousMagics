unlockedPreReqs = false;
frame = 0;
arrows = [];
setArrows = false;

checkPreReqs = function() {
	var check = true;
	for (var i = 0; i < array_length(PreReq); i ++){
		if (!global.data.skills[PreReq[i]]){
			check = false;
		}
	}
	unlockedPreReqs = check;
	if (!unlockedPreReqs){
		frame = 2;
	}else{
		if (global.data.skills[skillID]){
			frame = 0;
		}else frame = 1;
	}
}

checkPreReqs();