if (setArrows == false){
	for (var _i = 0; _i < array_length(PreReq); _i++) {
		with (pSkills){
			if (skillID = other.PreReq[_i]){
				array_push(other.arrows,id);
			}
		}
	}
	setArrows = true;
}

if (mouse_on_me() and mouse_check_button_pressed(mb_left)){
	if (global.data.skills[skillID] == false){
		global.data.skills[skillID] = true;
		with (pSkills){
			checkPreReqs();
		}
	}
}