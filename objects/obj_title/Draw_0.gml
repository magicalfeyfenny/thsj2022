switch ( title_mode ) {	
	case TITLE_MODE_START_FADEIN: {
		draw_sprite_ext(spr_title_logo, 0, 320, 180, title_xscale, title_yscale, title_angle, c_white, 1);
		break;
	}
	case TITLE_MODE_START_READY: {
		draw_sprite_ext(spr_title_logo, 0, 320, 180, title_xscale, title_yscale, title_angle, c_white, 1);
		draw_set_halign(fa_center);
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color_border(320, 250, "== press any key ==", 15, 1000, 1, 1, 0, c_blue, c_blue, c_aqua, c_aqua, dsin(abs(title_switch_timer) * 2), 1, c_white);
		
		break;
	}
	case TITLE_MODE_MENU_FADEIN: {
		draw_sprite_ext(spr_title_logo, 0, 320, 180, title_xscale, title_yscale, title_angle, c_white, 1);
		draw_set_color(c_teal);
		draw_set_alpha(.40 * ((100 - (2 * title_switch_timer)) / 100));
		gpu_set_blendmode(bm_add);
		draw_triangle(641,	-400,	641,	760,	640 - (350 - (7 * title_switch_timer)),	370,	false);
		draw_triangle(641,	-600,	641,	960,	640 - (400 - (8 * title_switch_timer)),	-30,	false);
		draw_triangle(641,	-800,	641,	1160,	640 - (300 - (6 * title_switch_timer)),	-5,		false);
		draw_triangle(641,	-720,	641,	1080,	640 - (250 - (5 * title_switch_timer)),	365,	false);	
		draw_rectangle(-1, 361, 641, 361 - (title_switch_timer/5), false);
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1 * ((100 - (2 * title_switch_timer)) / 100) );
		draw_set_halign(fa_right);
		draw_set_font(fn_cursive);
		//implemented menu functions:
		draw_set_color(c_black);
		draw_text_ext_transformed_color_border( 580 + (3 * TITLE_MENU_CHOICE_NEW_GAME	), 90 + (30 * TITLE_MENU_CHOICE_NEW_GAME	),	TITLE_MENU_TEXT_NEW_GAME	,15, 1000, 1, 1, 0, c_black, c_black, c_black, c_black, 1, 1, c_white);	//2
		draw_text_ext_transformed_color_border( 580 + (3 * TITLE_MENU_CHOICE_EXIT_GAME	), 90 + (30 * TITLE_MENU_CHOICE_EXIT_GAME	),	TITLE_MENU_TEXT_EXIT_GAME	,15, 1000, 1, 1, 0, c_black, c_black, c_black, c_black, 1, 1, c_white);	//6
		//unimplemented menu functions:
/*		draw_set_color(c_gray);
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_CONTINUE	), 90 + (30 * TITLE_MENU_CHOICE_CONTINUE	),	TITLE_MENU_TEXT_CONTINUE	);	//1
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_LOAD_GAME	), 90 + (30 * TITLE_MENU_CHOICE_LOAD_GAME	),	TITLE_MENU_TEXT_LOAD_GAME	);	//3
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_MUSIC_ROOM	), 90 + (30 * TITLE_MENU_CHOICE_MUSIC_ROOM	),	TITLE_MENU_TEXT_MUSIC_ROOM	);	//4
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_OPTIONS		), 90 + (30 * TITLE_MENU_CHOICE_OPTIONS		),	TITLE_MENU_TEXT_OPTIONS		);	//5
*/		draw_set_color(c_white);
		break;
	}
	case TITLE_MODE_MENU_READY: {
		draw_sprite_ext(spr_title_logo, 0, 320, 180, title_xscale, title_yscale, title_angle, c_white, 1);
		draw_set_color(c_teal);
		draw_set_alpha(.40);
		gpu_set_blendmode(bm_add);
		draw_triangle(641, -400, 641, 760, 290, 370, false);
		draw_triangle(641, -600, 641, 960, 240, -30, false);
		draw_triangle(641, -800, 641, 1160, 340, -5, false);
		draw_triangle(641, -720, 641, 1080, 390, 365, false);
		draw_rectangle(-1, 361, 641, 361 - 20, false);
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		draw_sprite(spr_menuselect, 0, 600 + (3 * menu_position) , 100 + (30 * menu_position) );
		draw_set_halign(fa_right);
		draw_set_font(fn_cursive);
		//implemented menu functions:
		draw_set_color(c_black);
		draw_text_ext_transformed_color_border( 580 + (3 * TITLE_MENU_CHOICE_NEW_GAME	), 90 + (30 * TITLE_MENU_CHOICE_NEW_GAME	),	TITLE_MENU_TEXT_NEW_GAME	,15, 1000, 1, 1, 0, c_black, c_black, c_black, c_black, 1, 1, c_white);	//2
		draw_text_ext_transformed_color_border( 580 + (3 * TITLE_MENU_CHOICE_EXIT_GAME	), 90 + (30 * TITLE_MENU_CHOICE_EXIT_GAME	),	TITLE_MENU_TEXT_EXIT_GAME	,15, 1000, 1, 1, 0, c_black, c_black, c_black, c_black, 1, 1, c_white); //6
		//unimplemented menu functions:
/*		draw_set_color(c_gray);
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_CONTINUE	), 90 + (30 * TITLE_MENU_CHOICE_CONTINUE	),	TITLE_MENU_TEXT_CONTINUE	);	//1
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_LOAD_GAME	), 90 + (30 * TITLE_MENU_CHOICE_LOAD_GAME	),	TITLE_MENU_TEXT_LOAD_GAME	);	//3
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_MUSIC_ROOM	), 90 + (30 * TITLE_MENU_CHOICE_MUSIC_ROOM	),	TITLE_MENU_TEXT_MUSIC_ROOM	);	//4
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_OPTIONS		), 90 + (30 * TITLE_MENU_CHOICE_OPTIONS		),	TITLE_MENU_TEXT_OPTIONS		);	//5
*/		draw_set_font(fn_help);
		draw_set_halign(fa_left);
		draw_text_ext_transformed_color_border( 5, 345, "A and D: up/down. F: select", 9, 620, 1, 1, 0, c_blue, c_blue, c_blue, c_blue, 1, 1, c_white); //6
		draw_set_color(c_white);
		break;
	}
	default: {
		break;
	}
}


























