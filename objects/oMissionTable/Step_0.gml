dist = distance_to_object(oWizard);

if (global.controls.getKeyUse()) and (dist <= 64) or (global.controls.getKeyUse()) and (!instance_exists(oWizard)){
	if (instance_exists(pMissions)){
		instance_activate_all();
		instance_deactivate_object(pMissions);
		visible = true;
	}else{
		deactivate_irrelevant();
		instance_activate_object(pMissions);
		visible = false;
	}
}