if (global.dialogue_mode) {
	
	if ( actor_left_sprite != -1 ) {
		draw_sprite_ext( actor_left_sprite, 0, camera_get_view_x(view_camera), camera_get_view_y(view_camera), 1, 1, 0, c_white, 1 - (.5 * last_active));
	}
	if ( actor_right_sprite != -1 ) {
		draw_sprite_ext( actor_right_sprite, 0, camera_get_view_x(view_camera) + 640, camera_get_view_y(view_camera), -1, 1, 0, c_white, .5 + (.5 * last_active));
	}

// Draw dialogue box
	draw_sprite(spr_text_box, 0, camera_get_view_x(view_camera) + 30, camera_get_view_y(view_camera) + 220);
	
	draw_set_font(fn_dialogue_names);
	draw_set_alpha(1);
	if ( last_active == LEFT_ACTOR || actor_right = "noname") {
		draw_set_alpha(0);		
	}
	draw_text( camera_get_view_x(view_camera) + 85, camera_get_view_y(view_camera) + 225, actor_right );
	
	draw_set_alpha(1);
	if ( last_active == RIGHT_ACTOR || actor_left = "noname") {
		draw_set_alpha(0);
	}
	draw_text( camera_get_view_x(view_camera) + 85, camera_get_view_y(view_camera) + 225, actor_left );
	draw_set_alpha(1);
	
	draw_set_font(fn_dialogue_text);
	draw_text( camera_get_view_x(view_camera) + 75, camera_get_view_y(view_camera) + 265, textspew );
	
	if (text_advance_ready == TEXT_READY) {
		loopdoop++;
		draw_sprite( spr_text_arrow, round((loopdoop % 160) / 20), camera_get_view_x(view_camera) + 540, camera_get_view_y(view_camera) + 300 ); 
	}

}