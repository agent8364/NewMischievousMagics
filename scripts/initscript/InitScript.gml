draw_set_font(fPixel);
function InitScript(){
	//array_push(global.data.missions, new Mission("Test", "Test Mission", sSlotForm))
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
	enum Skills {
		DASH = 0,
		NOTDASH = 1
	}
	//Enemies
	global.DungeonEnemies = ds_list_create();
	ds_list_add(global.DungeonEnemies,oSlime);
	
	//Kills
	global.maxKills = 1;
	global.kills = ds_grid_create(2,1);
	ds_grid_add(global.kills,1,1,"Slime");
	ds_grid_add(global.kills,2,1,0);
	#macro RESSCALE obj_resolution_manager.scale
}
function vector2 (_x=-1, _y=-1) constructor {
	x = _x;
	y = _y;
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
#region Also Red Smoke 
global.AlsoRedSmokeSystem = part_system_create();
global.AlsoRedSmokeType = part_type_create();
part_type_shape(global.AlsoRedSmokeType,pt_shape_ring);
part_type_size(global.AlsoRedSmokeType,0.05,0.1,0,0);
part_type_life(global.AlsoRedSmokeType,15,30);
part_type_direction(global.AlsoRedSmokeType,0,359,0,0);
part_type_speed(global.AlsoRedSmokeType,0.5,1,0,0);
part_type_color1(global.AlsoRedSmokeType,c_red);
#endregion
#region Variables
global.wave = 19;
global.canExplode = false;
global.explosionRadius = 1
global.addativeDmg = 0;
//global.easyMissions = 
global.dmgMultiplier = 1;
global.defaultWindowW = window_get_width();
global.defaultWindowH = window_get_height();
//Saving
global.data = {
	inventory : array_create(5,0),
	mainLevel : 0,
	alchemyPoints : 100,
	baseDmg : 0,
	baseRange : 0,
	basePierce : 0,
	baseBomb : 0,
	missions : [],
	skills : array_create(40,0),
	has_skill : function(_id) {
		return skills[_id];
	}
};

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
ds_list_add(global.availableUpgrades,oExtraLife);
ds_list_add(global.availableUpgrades,oReinvigorate);
ds_list_add(global.availableUpgrades,oTurbo);
ds_list_add(global.availableUpgrades,oPowerShot);
ds_list_add(global.availableUpgrades,oBombShots);
ds_list_add(global.availableUpgrades,oChargeShot);
#endregion
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
#region Constructors
Mission = function(_title,_desc,_sprite) constructor {
	title = _title;
	desc = _desc;
	completed = false;
	sprite = _sprite;
}
#endregion

LoadData();