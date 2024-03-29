if (distance_to_object(oWizard)<=64){
	draw_sprite(sE,frame,x+sprite_width/2,y-sprite_height/2);
	frame ++;
}else if (frame != 0) frame = 0;

draw_self();