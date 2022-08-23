if ( global.cutscene_mode ) {
	if (instance_exists( obj_cutscene_camera)) {
		target = instance_nearest(x, y, obj_cutscene_camera);
	} else {
		target = obj_player_cirno;
	}
} else {
	target = obj_player_cirno;
}
	
if ( instance_exists(target) ) {
	target_camera_x =	target.x;
	target_camera_y =	target.y;

	if ( mouse_check_button(mb_left) && target.lasso_build) {
		target_camera_x = (target.x + target.x + mouse_x) / 3;
		target_camera_y = (target.y + target.y + mouse_y) / 3;
		}
	if ( mouse_check_button(mb_right) && target.lasso_contract && target.lasso_stored > 0) {
		target_camera_x = (target.x + target.x + target.lasso_x) / 3;
		target_camera_y = (target.y + target.y + target.lasso_y) / 3;
	}
}


x = x + lengthdir_x( abs(0.2 * (target_camera_x - x)), point_direction(x, y, target_camera_x, target_camera_y) );
y = y + lengthdir_y( abs(0.2 * (target_camera_y - y)), point_direction(x, y, target_camera_x, target_camera_y) );




