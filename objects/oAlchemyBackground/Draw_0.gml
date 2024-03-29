draw_self();

draw_set_halign(fa_center);
if (global.data.alchemyPoints == 1){
	draw_text(x+sprite_width/2,y,"You have " + string(global.data.alchemyPoints) + " Alchemy Point!\nClick the potions to Allocate them!");
}else{
	draw_text(x+sprite_width/2,y,"You have " + string(global.data.alchemyPoints) + " Alchemy Points!\nClick the potions to Allocate them!");
}
draw_set_halign(fa_left);