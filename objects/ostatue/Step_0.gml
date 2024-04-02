if (!instance_exists(pRequiredEnemies)) and (alarm[0] <= 0){
	global.wave ++;
	if (global.wave == 4) and (ds_list_find_index(global.DungeonEnemies,oSkeleton) == -1){
		ds_list_add(global.DungeonEnemies,oSkeleton);
	}
	if (global.wave == 10) and (ds_list_find_index(global.DungeonEnemies,oMushroom) == -1){
		ds_list_add(global.DungeonEnemies,oMushroom);
	}
	if (global.wave == 20) and (ds_list_find_index(global.DungeonEnemies,oNecromancer) == -1){
		ds_list_add(global.DungeonEnemies,oNecromancer);
	}
	
	StatueEnemies();
	alarm[0] = 120
}


