function scr_options_init(){
	if (!variable_global_exists( "global.options" ) ) {
		global.options = -1;
	}
	if (!ds_exists(global.options, ds_type_map) ) {
		global.options = ds_map_create();
	}
	
	//initialize default values for options
	global.options[? OPTIONS_INPUT_TYPE] = "keyboard";
	global.options[? OPTIONS_FULLSCREEN] = true;
	global.options[? OPTIONS_WINDOWMULT] = VIEW_MULTIPLY_720;	//default to 1280x720 for non-fullscreen
	if ( display_get_height() >= 2160 && display_get_width() >=	3840) {						//attempt to adjust to common display resolutions
		global.options[? OPTIONS_FULLMULT] = VIEW_MULTIPLY_2160;
	} else if ( display_get_height() >= 1440 && display_get_width() >=2560 ) {
		global.options[? OPTIONS_FULLMULT] = VIEW_MULTIPLY_1440;
	} else if ( display_get_height() >= 1080 && display_get_width() >= 1920 ) {
		global.options[? OPTIONS_FULLMULT] = VIEW_MULTIPLY_1080;
	} else if ( display_get_height() >= 720 && display_get_width() >= 1280 ) {
		global.options[? OPTIONS_FULLMULT] = VIEW_MULTIPLY_720;
	} else {
		global.options[? OPTIONS_FULLMULT] = VIEW_MULTIPLY_360;
	}
	
	//load options from file
	if (!file_exists(working_directory + "options.json") ) { //working directory for testing is ~/.config/neo_faraii_nights
		var file = file_text_open_write(working_directory + "options.json");
		var output_string = json_encode( global.options );
		file_text_write_string(file, output_string);
		file_text_close(file);
//		show_message( "Options file does not exist. Storing defaults" );
	} else {
		var input_string = "";
		var test_key = ds_map_create();
		var read_file = file_text_open_read( working_directory + "options.json" );
		input_string = file_text_read_string( read_file );
		test_key = json_decode( input_string );
		file_text_close( read_file );
		if ( test_key != -1 ) {
			if ( ds_exists( global.options, ds_type_map ) ) {  //0-9 is the numeric range of the macros
				global.options = json_decode( input_string );
			} else {
				var write_file = file_text_open_write( working_directory + "options.json" );
				var output_string = json_encode( global.options );
				file_text_write_string(write_file, output_string);
				file_text_close( write_file );
//				show_message( "Options file verification failed. Storing defaults" );
			}
		}
		ds_map_destroy( test_key );
	}

	//apply options
	if (global.options[? OPTIONS_FULLSCREEN]) {
		window_set_fullscreen(true);
		view_set_hport(view_current, WINDOW_BASE_HEIGHT * global.options[? OPTIONS_FULLMULT]);
		view_set_wport(view_current, WINDOW_BASE_WIDTH * global.options[? OPTIONS_FULLMULT]);
		window_set_cursor(cr_none);
		cursor_sprite = asset_get_index( "spr_cursor_" + string(WINDOW_BASE_HEIGHT * global.options[? OPTIONS_FULLMULT]) );
	} else {
		window_set_fullscreen(false);
		view_set_hport(view_current, WINDOW_BASE_HEIGHT * global.options[? OPTIONS_WINDOWMULT]);
		view_set_wport(view_current, WINDOW_BASE_WIDTH * global.options[? OPTIONS_WINDOWMULT]);
		cursor_sprite = asset_get_index( "spr_cursor_" + string(WINDOW_BASE_HEIGHT * global.options[? OPTIONS_FULLMULT]) );
		window_set_cursor(cr_none);
	}
}