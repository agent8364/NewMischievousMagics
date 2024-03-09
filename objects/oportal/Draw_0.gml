///@desc Draw the E button
draw_self();
if (distance_to_object(oWizard)<=64){
	draw_sprite(sE,frame,x-sprite_width/4,y-sprite_height/2);
	frame ++;
}else frame = 0;