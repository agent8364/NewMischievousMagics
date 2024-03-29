var _win_w = window_get_width();
var _win_h = window_get_height();

var _x = 0;
var _y = _win_h - (_win_h / 3)

var _xscale = _win_w / sprite_get_width(sTextBox);
var _yscale = (_win_h / 3) / sprite_get_height(sTextBox);


draw_sprite_ext(sTextBox,image_index,_x, _y, _xscale, _yscale, 0, c_white, 1);
draw_text_global(_x+4,_y+4,global.text);
