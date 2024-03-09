//var array = [];
var _count = 0;
var pos = new vector2 (0,0);
with (oExp){
	_count++;
	pos.x += x;
	pos.y += y;
	
}
if (_count>0){
	pos.x /= _count;
	pos.y /= _count;
	
	with (oExp){
		gravPoint = pos;
	}
}