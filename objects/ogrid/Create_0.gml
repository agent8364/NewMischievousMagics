///@desc Create the grid
cellWidth = 32;
cellHeight = 32;

var hCells = room_width div cellWidth;
var vCells = room_height div cellHeight;

global.grid = mp_grid_create(0,0,hCells,vCells,cellWidth,cellHeight);

mp_grid_add_instances(global.grid,oWall,true);
//mp_grid_add_instances(global.grid,pRequiredEnemies,false);