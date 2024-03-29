function TextGap(){
	return string_height("jI") + 2;
}
function Detonate(damage, radius){
	instance_destroy();
	//repeat(3){
		with (instance_create_layer(x + random_range(-6,6),y + random_range(-6,6),layer,oExplosion)){
			dmg = damage;
			image_xscale = 1+(0.1*radius);
			image_yscale = 1+(0.1*radius);
		}
	//}
}
function draw_text_global (_x,_y,string,sep=string_height("Ij"),w=window_get_width()-8,xscale=1,yscale=1,angle=0,c1=c_white,alpha=1,adjusttoscreen=true){
	
	
	if (adjusttoscreen){
		xscale *= RESSCALE;
		yscale *= RESSCALE;
	}
	
	draw_text_ext_transformed_color(_x,_y,string,sep,w,xscale,yscale,angle,c1,c1,c1,c1,alpha);
}
function deactivate_irrelevant (){
	instance_deactivate_all(true);
	instance_activate_object(oCamera);
	instance_activate_object(obj_resolution_manager);
}
function mouse_in_range_gui(_x, _y, _w, _h){
	var _mouse_x = window_mouse_get_x();
	var _mouse_y = window_mouse_get_y();
	
	return (_mouse_x >= _x && _mouse_x < _x + _w && _mouse_y >= _y && _mouse_y < _y + _h);
}
function SaveData(){
	var data = json_stringify(global.data);
	var _buffer = buffer_create(string_length(data), buffer_grow, 1);
	buffer_write(_buffer, buffer_string, data);
	buffer_save(_buffer, "Save.txt"); 
	buffer_delete(_buffer);
}
function LoadData(){
	if file_exists("Save.txt"){
		var _buffer = buffer_load("Save.txt");
		var _data = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		global.data = json_parse(_data);
	}
	
}

function mouse_on_me() {
	return (mouse_x >= x && mouse_x < x + sprite_width && mouse_y >= y && mouse_y < y + sprite_height);
}