if (other.image_index == 0){
	ds_grid_add(oInventory.count,1,0,1);
}else if (other.image_index == 1){
	ds_grid_add(oInventory.count,1,1,1);
}else if (other.image_index == 2){
	ds_grid_add(oInventory.count,1,2,1);
}else if (other.image_index == 3){
	ds_grid_add(oInventory.count,1,3,1);
}else if (other.image_index == 4){
	ds_grid_add(oInventory.count,1,4,1);
}

instance_destroy(other);