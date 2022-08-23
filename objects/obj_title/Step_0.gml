title_xscale = 1 / max(1, fade_in_time );
title_yscale = 1 / max(1, fade_in_time );

title_angle = 10 * dsin( fade_in_time );

fade_in_time -= 1;


title_switch_timer -= 1;

if (title_switch_timer <= 0 && title_mode == TITLE_MODE_START_FADEIN ) {
	title_mode = TITLE_MODE_START_READY;
}

if ( title_mode == TITLE_MODE_START_READY ) {
	var input = scr_input_get(INPUT_ANY);
	if (input) {
		title_switch_timer = 50;
		title_mode = TITLE_MODE_MENU_FADEIN;
	}
}

if (title_switch_timer <= 0 && title_mode == TITLE_MODE_MENU_FADEIN ) {
	title_mode = TITLE_MODE_MENU_READY;
}

if (title_mode == TITLE_MODE_MENU_READY ) {
	menu_wait--;
	var input_up = scr_input_get( INPUT_UP );
	var input_down = scr_input_get( INPUT_DOWN );
	var input_select = ( scr_input_get( INPUT_BOMB) );

	if (input_up ) {
		if (menu_wait < 0) {
			menu_position--;
			if (menu_position <= 0) {
				menu_position = TITLE_MENU_CHOICES;
			}
			menu_wait = 30;
		}
	}
	if (input_down) {
		if (menu_wait < 0) {
			menu_position++;
			if (menu_position > TITLE_MENU_CHOICES ) {
				menu_position = 1;
			}
			menu_wait = 30;
		}
	}
if ( input_select ) {
		switch (menu_position) {
			case TITLE_MENU_CHOICE_NEW_GAME: {
				room_goto_next();
				break;
			}
			case TITLE_MENU_CHOICE_EXIT_GAME: {
				game_end();
				break;
			}
			default: {
				break;
			}
		}
	}
}














