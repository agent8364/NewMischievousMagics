if (canShow){
	instance_deactivate_object(oWizard);
	instance_deactivate_object(oPortal);
	/*for(var xx=1; xx<= items; xx++){
		for(var yy=1; yy <= tiers;  yy++){
			draw_set_halign(fa_center);
			draw_sprite(sInvSlot,0,x+(xx*36),y+(yy*36));
			if (xx = 1){
				draw_sprite(sSlimeChunk,yy-1,x+(xx*36),y+(yy*36));
			}else if (xx = 2){
				draw_sprite(sBone,yy-1,x+(xx*36),y+(yy*36));
			}else if (xx = 3){
				draw_sprite(sMushroomPiece,yy-1,x+(xx*36),y+(yy*36));
			}
			draw_set_color(c_black);
			var num = ds_grid_get(count,xx-1,yy-1)
			draw_text(x+(xx*36)+8,y+(yy*36),num);
			draw_set_color(c_white);
		}
	}
	*/
	if (!instance_exists(oSlotForm)){
		instance_create_layer((room_width/2)-18,(room_height/3)*2,layer,oSlotForm);
	}else{
		instance_activate_object(oSlotForm);
	}
	if (!instance_exists(oSlotType)){
		instance_create_layer((room_width/2)+18,(room_height/3)*2,layer,oSlotType);
	}else{
		instance_activate_object(oSlotType);
	}if (!instance_exists(oSlotMisc)){
		instance_create_layer((room_width/2)+54,(room_height/3)*2,layer,oSlotMisc);
	}else{
		instance_activate_object(oSlotMisc);
	}
}