var cVal = max(255-val * 10, 0)
var col = make_color_rgb(cVal,cVal,255);
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, col, 1);