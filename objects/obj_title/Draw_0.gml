switch ( title_mode ) {	
	case TITLE_MODE_START_FADEIN: {
		draw_set_font (fn_cursivelarge);
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color_border(190, 100, "Sunflowers",	15, 1000, 1, 1, 25, c_yellow, c_yellow, c_orange, c_orange, ( 100 - title_switch_timer ) / 100, 1, c_maroon );
		draw_text_ext_transformed_color_border(460, 160, "Rain",	15, 1000, 1, 1, 25, c_dkgray, c_dkgray, c_silver, c_silver, ( 100 - title_switch_timer ) / 100, 1, c_navy );
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color_border(360, 140, "in the",	15, 1000, 1, 1, 0, c_white, c_white, c_white, c_white, ( 100 - title_switch_timer ) / 100, 1, c_black );
		break;
	}
	case TITLE_MODE_START_READY: {
		draw_set_font (fn_cursivelarge);
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color_border(190, 100, "Sunflowers",	15, 1000, 1, 1, 25, c_yellow, c_yellow, c_orange, c_orange, 1, 1, c_maroon );
		draw_text_ext_transformed_color_border(460, 160, "Rain",	15, 1000, 1, 1, 25, c_dkgray, c_dkgray, c_silver, c_silver, 1, 1, c_navy  );
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color_border(360, 140, "in the",	15, 1000, 1, 1, 0, c_silver, c_silver, c_white, c_white, 1, 1, c_black );
		draw_text_color(320, 250, "~~press any key~~", c_white, c_white, c_white, c_white, dsin(abs(title_switch_timer) * 2) );
		break;
	}
	case TITLE_MODE_MENU_FADEIN: {
		draw_set_font (fn_cursivelarge);
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color_border(190 - (100 - (2 * title_switch_timer)), 100 + (50 - (1 * title_switch_timer)), "Sunflowers", 15, 1000, 1, 1, 25 + (760 - (13.2 * title_switch_timer)), c_yellow, c_yellow, c_orange, c_orange, 1, 1, c_maroon );
		draw_text_ext_transformed_color_border(460 - (280 - (5.6 * title_switch_timer)), 160 - (20 - (0.4 * title_switch_timer)), "Rain", 15, 1000, 1, 1, 25 + (760 - (13.2 * title_switch_timer)), c_dkgray, c_dkgray, c_silver, c_silver, 1, 1, c_navy );
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color_border(360 - (210 - (4.2 * title_switch_timer)), 140 + (100 - (2 * title_switch_timer)), "in the", 15, 1000, 1, 1, 2225 - (44.5 * title_switch_timer), c_silver, c_silver, c_white, c_white, 1, 1, c_black );
		draw_set_color(c_white);
		draw_set_alpha(.20 * ((100 - (2 * title_switch_timer)) / 100));
		draw_triangle(641,	-400,	641,	760,	640 - (350 - (7 * title_switch_timer)),	370,	false);
		draw_triangle(641,	-600,	641,	960,	640 - (400 - (8 * title_switch_timer)),	-30,	false);
		draw_triangle(641,	-800,	641,	1160,	640 - (300 - (6 * title_switch_timer)),	-5,		false);
		draw_triangle(641,	-720,	641,	1080,	640 - (250 - (5 * title_switch_timer)),	365,	false);
		draw_set_alpha(1 * ((100 - (2 * title_switch_timer)) / 100) );
		draw_set_halign(fa_right);
		draw_set_font(fn_cursive);
		//implemented menu functions:
		draw_set_color(c_black);
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_NEW_GAME	), 90 + (30 * TITLE_MENU_CHOICE_NEW_GAME	),	TITLE_MENU_TEXT_NEW_GAME	);	//2
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_EXIT_GAME	), 90 + (30 * TITLE_MENU_CHOICE_EXIT_GAME	),	TITLE_MENU_TEXT_EXIT_GAME	);	//6
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
		draw_set_font (fn_cursivelarge);
		draw_set_halign(fa_center);
		draw_text_ext_transformed_color_border(90, 150, "Sunflowers", 15, 1000, 1, 1, 65, c_yellow, c_yellow, c_orange, c_orange, 1, 1, c_maroon );
		draw_text_ext_transformed_color_border(180, 140, "Rain", 15, 1000, 1, 1, 65, c_dkgray, c_dkgray, c_silver, c_silver, 1,1,  c_navy );
		draw_set_font(fn_cursive);
		draw_text_ext_transformed_color_border(150, 240, "in the", 15, 1000, 1, 1, 65, c_silver, c_silver, c_white, c_white, 1, 1, c_black );
		draw_set_color(c_white);
		draw_set_alpha(.20);
		draw_triangle(641, -400, 641, 760, 290, 370, false);
		draw_triangle(641, -600, 641, 960, 240, -30, false);
		draw_triangle(641, -800, 641, 1160, 340, -5, false);
		draw_triangle(641, -720, 641, 1080, 390, 365, false);
		draw_set_alpha(1);
		draw_sprite(spr_menuselect, 0, 600 + (3 * menu_position) , 100 + (30 * menu_position) );
		draw_set_halign(fa_right);
		draw_set_font(fn_cursive);
		//implemented menu functions:
		draw_set_color(c_black);
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_NEW_GAME	), 90 + (30 * TITLE_MENU_CHOICE_NEW_GAME	),	TITLE_MENU_TEXT_NEW_GAME	);	//2
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_EXIT_GAME	), 90 + (30 * TITLE_MENU_CHOICE_EXIT_GAME	),	TITLE_MENU_TEXT_EXIT_GAME	);	//6
		//unimplemented menu functions:
/*		draw_set_color(c_gray);
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_CONTINUE	), 90 + (30 * TITLE_MENU_CHOICE_CONTINUE	),	TITLE_MENU_TEXT_CONTINUE	);	//1
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_LOAD_GAME	), 90 + (30 * TITLE_MENU_CHOICE_LOAD_GAME	),	TITLE_MENU_TEXT_LOAD_GAME	);	//3
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_MUSIC_ROOM	), 90 + (30 * TITLE_MENU_CHOICE_MUSIC_ROOM	),	TITLE_MENU_TEXT_MUSIC_ROOM	);	//4
		draw_text( 580 + (3 * TITLE_MENU_CHOICE_OPTIONS		), 90 + (30 * TITLE_MENU_CHOICE_OPTIONS		),	TITLE_MENU_TEXT_OPTIONS		);	//5
*/		draw_set_color(c_white);
		break;
	}
	default: {
		break;
	}
}






















