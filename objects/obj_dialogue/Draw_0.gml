if (global.dialogue_mode) {
// Draw background image
	draw_set_alpha(1);
	if (bg_sprite != -1) {
		draw_sprite( bg_sprite, 0, 0, 0 );
	}
	
// Draw character portraits
	if (last_active == RIGHT_ACTOR || last_active == LEFT_ACTOR) {
		if ( actor_left_sprite != -1 ) {
			draw_sprite_ext( actor_left_sprite, 0, camera_get_view_x(view_camera), camera_get_view_y(view_camera), 1, 1, 0, c_white, 1 - (.5 * last_active));
		}
		if ( actor_right_sprite != -1 ) {
			draw_sprite_ext( actor_right_sprite, 0, camera_get_view_x(view_camera) + 640, camera_get_view_y(view_camera), -1, 1, 0, c_white, .5 + (.5 * last_active));
		}
	}
	if (last_active == NARRATOR) {
		if ( actor_left_sprite != -1 ) {
			draw_sprite_ext( actor_left_sprite, 0, camera_get_view_x(view_camera), camera_get_view_y(view_camera), 1, 1, 0, c_white, 1);
		}
		if ( actor_right_sprite != -1 ) {
			draw_sprite_ext( actor_right_sprite, 0, camera_get_view_x(view_camera) + 640, camera_get_view_y(view_camera), -1, 1, 0, c_white, 1);
		}
	}

// Draw ADV mode (dialogue box)
	if (last_active == RIGHT_ACTOR || last_active == LEFT_ACTOR) {
		narrator_alpha = 0;
		draw_set_halign(fa_left);
		draw_sprite(spr_text_box, 0, camera_get_view_x(view_camera) + 30, camera_get_view_y(view_camera) + 220);
	
		draw_set_font(fn_dialogue_names);
		draw_set_alpha(1);
		if ( last_active == LEFT_ACTOR || actor_right = "noname") {
			draw_set_alpha(0);		
		}
		if ( actor_right == "___") {
			draw_text( camera_get_view_x(view_camera) + 85, camera_get_view_y(view_camera) + 225, "???" );
		} else {
			draw_text( camera_get_view_x(view_camera) + 85, camera_get_view_y(view_camera) + 225, actor_right );
		}
		
		draw_set_alpha(1);
		if ( last_active == RIGHT_ACTOR || actor_left = "noname" ) {
			draw_set_alpha(0);
		}
		if ( actor_left == "___") {
			draw_text( camera_get_view_x(view_camera) + 85, camera_get_view_y(view_camera) + 225, "???" );
		} else {
			draw_text( camera_get_view_x(view_camera) + 85, camera_get_view_y(view_camera) + 225, actor_left );
		}
		draw_set_alpha(1);
		
		draw_set_font(fn_dialogue_text);
		draw_text( camera_get_view_x(view_camera) + 75, camera_get_view_y(view_camera) + 265, textspew );
	}
// Draw NVL mode (fade-out full-screen text)
	if (last_active == NARRATOR) {
		draw_set_color(c_black);
		narrator_alpha++;
		draw_set_alpha(0 + min(0.5, narrator_alpha / 25 ));
		draw_rectangle(camera_get_view_x(view_camera) - 1, camera_get_view_y(view_camera) - 1, camera_get_view_x(view_camera) + 641, camera_get_view_y(view_camera) + 361, false);
		draw_set_color(c_white);
		draw_set_font(fn_dialogue_text);
		draw_set_halign(fa_center);
		for(var i = 1; i <= textlinecount + 1; i++) {
			draw_set_alpha( (-10 - (80 * i) + textlinefadein) / 60 );
			draw_text(camera_get_view_x(view_camera) + 320, camera_get_view_y(view_camera) + 180 - (20 * textlinecount) + (40 * (i-1)), textlines[i]);
		}
	}
	if (text_advance_ready == TEXT_READY) {
		loopdoop++;
		draw_set_alpha(1);
		draw_sprite( spr_text_arrow, round((loopdoop % 160) / 20), camera_get_view_x(view_camera) + 540, camera_get_view_y(view_camera) + 300 ); 
	}

//draw tutorial text
		draw_set_font(fn_help);
		draw_set_halign(fa_left);
		draw_text_ext_transformed_color_border( 5, 345, "Z: advance text. CTRL: skip", 9, 620, 1, 1, 0, c_blue, c_blue, c_blue, c_blue, tutorial_fadeout / 20, 1, c_white); //6
}