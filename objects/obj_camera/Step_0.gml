if ( global.cutscene_mode ) {
	target = instance_nearest(x, y, obj_cutscene_camera);
} else {
	target = obj_marisa;
}
	
if ( instance_exists(target) ) {
	target_camera_x =	target.x;
	target_camera_y =	target.y;
}

x = x + lengthdir_x( abs(0.2 * (target.x - x)), point_direction(x, y, target.x, target.y) );
y = y + lengthdir_y( abs(0.2 * (target.y - y)), point_direction(x, y, target.x, target.y) );
