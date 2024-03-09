timer --;
if (timer <= 0) instance_destroy();

y -= 0.5;
x += 1*dir;
if (x >= xstart + xShift){
	dir = -1;
}else if (x <= xstart - xShift){
	dir = 1;
}