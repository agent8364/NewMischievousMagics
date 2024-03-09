if (!instance_exists(pRequiredEnemies)) and (alarm[0] <= 0){
	global.wave ++;
	if (global.wave == 4) and (ds_list_find_index(global.DungeonEnemies,oSkeleton) == -1){
		ds_list_add(global.DungeonEnemies,oSkeleton);
	}
	if (global.wave == 10) and (ds_list_find_index(global.DungeonEnemies,oMushroom) == -1){
		ds_list_add(global.DungeonEnemies,oMushroom);
	}
	StatueEnemies();
	alarm[0] = 120
}


