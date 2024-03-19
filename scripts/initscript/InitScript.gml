draw_set_font(fPixel);
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
global.wave = 10;
global.baseDmg = 0;
global.baseRange = 0;
global.basePierce = 0;
global.baseBomb = 0;
global.canExplode = false;
global.alchemyPoints = 100;
global.explosionRadius = 1;
global.inventory = array_create(5,0);
#endregion
#region Upgrades
global.currentUpgrades = ds_list_create();
global.availableUpgrades = ds_list_create();
ds_list_add(global.availableUpgrades,oBurst);
ds_list_add(global.availableUpgrades,oMagnetize);
ds_list_add(global.availableUpgrades,oExplosivity); //CURSED
ds_list_add(global.availableUpgrades,oExperimentalExplosives); //CURSED
ds_list_add(global.availableUpgrades,oNuclear);
ds_list_add(global.availableUpgrades,oShortFuse);
ds_list_add(global.availableUpgrades,oSuperRange);
#endregion
function vector2 (_x=-1, _y=-1) constructor {
	x = _x;
	y = _y;
}
function TextGap(){
	return string_height("jI") + 2;
}
function Detonate(damage, radius){
	instance_destroy();
	//repeat(3){
		with (instance_create_layer(x + random_range(-6,6),y + random_range(-6,6),layer,oExplosion)){
			dmg = damage;
			image_xscale = 1+(0.1*radius);
			image_yscale = 1+(0.1*radius);
		}
	//}
}
#region Viewport Moniter Stuff
view_wport[0] = window_get_width();
view_hport[0] = window_get_height();
#endregion
#region controls
global.controls = {
	moveUp : ord("W"),
	moveLeft : ord("A"),
	moveRight:  ord("D"),
	moveDown : ord("S"),
	use : ord("E"),
	upgrade : ord("Q"),

	getKeyUp : function() {
		return keyboard_check(moveUp);
	},
	getKeyLeft : function() {
		return keyboard_check(moveLeft);
	},
	getKeyRight : function() {
		return keyboard_check(moveRight);
	},
	getKeyDown : function() {
		return keyboard_check(moveDown);
	},
	getKeyUse : function() {
		return keyboard_check_pressed(use);
	},
	getKeyUpgrade : function() {
		return keyboard_check_pressed(upgrade);
	}
};
#endregion