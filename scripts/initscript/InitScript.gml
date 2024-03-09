// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitScript(){

	enum EnemyState{
		MOVE,
		KNOCK
	}
	enum Floors{
		DUNGEON,
		NEST,
		VOLCANO,
		OCEAN,
		BARRENS
	}
	enum Spawn{
		HORDE = 0,
		SPOT = 1,
		OUTSIDE = 2
		
	}
	enum Type {
		NORMAL,
		EXPLOSIVE,
		LIGHTNING,
		WATER,
		FIRE,
		ACID,
		POISON,
		BLUNT
	}
	//Enemies
	global.DungeonEnemies = ds_list_create();
	ds_list_add(global.DungeonEnemies,oSlime);
	
	//Kills
	global.maxKills = 1;
	global.kills = ds_grid_create(2,1);
	ds_grid_add(global.kills,1,1,"Slime");
	ds_grid_add(global.kills,2,1,0);
}
#region Red Smoke
global.RedSmokeSystem = part_system_create();
global.RedSmokeType = part_type_create();
part_type_shape(global.RedSmokeType,pt_shape_circle);
part_type_size(global.RedSmokeType,0.1,0.2,0,0);
part_type_life(global.RedSmokeType,30,60);
part_type_direction(global.RedSmokeType,0,359,0,0);
part_type_speed(global.RedSmokeType,0.5,1,0,0);
part_type_color2(global.RedSmokeType,c_fuchsia,c_red);
#endregion
#region Green Smoke
global.GreenSmokeSystem = part_system_create();
global.GreenSmokeType = part_type_create();
part_type_shape(global.GreenSmokeType,pt_shape_ring);
part_type_size(global.GreenSmokeType,0.05,0.1,0,0);
part_type_life(global.GreenSmokeType,15,30);
part_type_direction(global.GreenSmokeType,0,359,0,0);
part_type_speed(global.GreenSmokeType,0.5,1,0,0);
part_type_color3(global.GreenSmokeType,c_olive,c_green,c_lime);
#endregion
#region White Smoke 
global.WhiteSmokeSystem = part_system_create();
global.WhiteSmokeType = part_type_create();
part_type_shape(global.WhiteSmokeType,pt_shape_ring);
part_type_size(global.WhiteSmokeType,0.05,0.1,0,0);
part_type_life(global.WhiteSmokeType,15,30);
part_type_direction(global.WhiteSmokeType,0,359,0,0);
part_type_speed(global.WhiteSmokeType,0.5,1,0,0);
part_type_color1(global.WhiteSmokeType,c_white);
#endregion
#region Variables
global.wave = 0;
global.selected = noone;
global.type = noone;
global.misc = noone;
global.form = sSlimeChunk;
global.typeRarity = 0;
global.miscRarity = 0;
global.formRarity = 0;
#region Upgrades
global.currentUpgrades = ds_list_create();
global.availableUpgrades = ds_list_create();
ds_list_add(global.availableUpgrades,oBurst);
ds_list_add(global.availableUpgrades,oMagnetize);
#endregion
#endregion
function vector2 (_x=-1, _y=-1) constructor {
	x = _x;
	y = _y;
}