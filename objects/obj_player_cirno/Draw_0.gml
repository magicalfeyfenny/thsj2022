lasso_rotator += 12;
if (lasso_x > 0 && lasso_y > 0 ) {
	if (lasso_build) {
		draw_set_color( c_aqua );
		draw_set_alpha( 1 );
		draw_circle( x, y + 40, lasso_size, true);
		draw_circle( x, y + 40, lasso_size-1, true);
		draw_circle( x, y + 40, lasso_size+1, true);
				draw_line( x, y, x + lengthdir_x( lasso_size, lasso_rotator), y + 40 + lengthdir_y( lasso_size, lasso_rotator) );
		draw_line( x, y, x - 1 + lengthdir_x( lasso_size, lasso_rotator), y - 1 + 40 + lengthdir_y( lasso_size, lasso_rotator) );
		draw_line( x, y, x + 1 + lengthdir_x( lasso_size, lasso_rotator), y + 1 + 40 + lengthdir_y( lasso_size, lasso_rotator) );
	} else {
		if (lasso_contract) {
			draw_set_color( c_aqua ); 
			draw_set_alpha( 0.4 );
			draw_circle( lasso_x, lasso_y, lasso_stored, false );
		}
		draw_set_color(c_aqua);
		draw_set_alpha( 1);
		draw_circle( lasso_x, lasso_y, lasso_stored, true);
		draw_circle( lasso_x, lasso_y, lasso_stored+1, true);
		draw_circle( lasso_x, lasso_y, lasso_stored-1, true);
		draw_line( x, y, lasso_x + lengthdir_x( lasso_stored, lasso_rotator), lasso_y + lengthdir_y( lasso_stored, lasso_rotator ) );
		draw_line( x, y, lasso_x + 1 + lengthdir_x( lasso_stored, lasso_rotator), lasso_y +1 + lengthdir_y( lasso_stored, lasso_rotator ) );
		draw_line( x, y, lasso_x -1 + lengthdir_x( lasso_stored, lasso_rotator), lasso_y -1+ lengthdir_y( lasso_stored, lasso_rotator ) );
	}
}


if (invuln > 0 && invuln % 3 == 0) {
	exit;
} else {
	draw_sprite(spr_dropshadow, 0, x, y + 40);
	draw_self();
}

