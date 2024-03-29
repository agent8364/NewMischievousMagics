base_x = 640;
base_y = 360;

camera_view_x = 640;
camera_view_y = 360;

scale = 3;

resize = function() {
	var _new_x = base_x * scale;
	var _new_y = base_y * scale;
	
	view_wport[0] = _new_x;
	view_hport[0] = _new_y;
	
	window_set_size(_new_x, _new_y);
	
	surface_resize(application_surface, _new_x, _new_y)
	
	window_set_position(0,0);
}

resize();