draw_self();
draw_set_alpha(0.25);
draw_set_color(c_lime);
draw_circle(x,y,range,false);
draw_set_alpha(1);
draw_set_color(c_green);
draw_circle(x,y,range+0.1,true);
draw_set_color(c_white);