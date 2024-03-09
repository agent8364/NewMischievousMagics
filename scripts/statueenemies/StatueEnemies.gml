// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatueEnemies(){
	if (room == Dungeon) and (list == undefined){
		list = global.DungeonEnemies;
	}
	if (!instance_exists(pRequiredEnemies)) and (alarm[0] <= 0){
		alarm[0] = 120
	}
	nextSpawn = choose(/*Spawn.OUTSIDE,*/Spawn.SPOT,Spawn.HORDE);
	/*if (nextSpawn == Spawn.OUTSIDE){
		repeat(global.wave){
			var _x = x + choose(x-(room_width/2)-100,x+(room_width/2)+100);
			var _y = y + choose(y-(room_height/2),y+(room_height/2+100));
			var enemy = ds_list_find_value(list,irandom_range(0,ds_list_size(list)-1));
			instance_create_layer(_x,_y,layer,enemy);
		}
	}else */if (nextSpawn == Spawn.SPOT){
		repeat(global.wave){
			var _x = random_range(32,room_width-32);
			var _y = random_range(32,room_height-32);
			while (point_distance(_x,_y,oWizard.x,oWizard.y)<=128){
				_x = random_range(32,room_width-32);
				_y = random_range(32,room_height-32);
			}
			var enemy = ds_list_find_value(list,irandom_range(0,ds_list_size(list)-1));
			with (instance_create_layer(_x,_y,layer,oPentagram)){
				spawnEnemy = enemy;
			}
		}
	}else if (nextSpawn == Spawn.HORDE){
		repeat(global.wave){
			var dist = random_range(128,192)+64;
			var dir = random_range(0,359);
			var _x = lengthdir_x(dist,dir);
			var _y = lengthdir_y(dist,dir);
			var enemy = ds_list_find_value(list,irandom_range(0,ds_list_size(list)-1));
			with (instance_create_layer(x + _x,y + _y,layer,oPentagram)){
				spawnEnemy = enemy;
			}
		}
	}
}