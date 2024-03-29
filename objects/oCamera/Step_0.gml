if (windowW != window_get_width() or windowH != window_get_height()){
	view_wport[0] = window_get_width();
	view_hport[0] = window_get_height();


	windowW = window_get_width();
	windowH = window_get_height();
	
	camera_set_view_size(view_camera[0], windowW, windowH);

    surface_resize(application_surface, view_wport[0], view_hport[0]);
	
	with(all){
		if (variable_instance_exists(id,"resize")) resize();
	}
}


if (instance_exists(oWizard)){
	x = oWizard.x;
	y = oWizard.y;
}