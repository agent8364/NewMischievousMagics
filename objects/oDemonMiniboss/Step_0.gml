///@desc Do the Necromancer

if (hp <= 0) instance_destroy();

if (x >= (room_width/2)) image_xscale = -1; else image_xscale = 1;


if (summonCooldown <= 0){
	summonCooldown = room_speed * 5;
	instance_create_layer(64,64,layer,oSpawnPortal);
	instance_create_layer(room_width-64,64,layer,oSpawnPortal);
	instance_create_layer(64,room_height-96,layer,oSpawnPortal);
	instance_create_layer(room_width-64,room_height-64,layer,oSpawnPortal);
}

if (spellCooldown <= 0){
	spellCooldown = room_speed * 5;
	with(instance_create_layer(room_width/2,64,layer,oSpawnPortal)) {image_index = 1;}
	with(instance_create_layer(room_width/2,room_height-64,layer,oSpawnPortal)) {image_index = 1;}
	with(instance_create_layer(64,room_height/2,layer,oSpawnPortal)) {image_index = 1;}
	with(instance_create_layer(room_width-64,64,layer,oSpawnPortal)) {image_index = 1;}
}
if (teleportCooldown <= 0){
	teleportCooldown = room_speed * 15;
	sprite_index = sDemonMinibossPortal;
}
if (sprite_index == sDemonMiniboss){
	teleportCooldown --;
	spellCooldown --;
	summonCooldown --;
}