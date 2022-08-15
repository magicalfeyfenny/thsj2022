/// @function					scr_scores( _mode);
/// @param	{real}	_mode

function scr_scores( _mode ) {
	switch ( _mode ) {
		case SCORE_READ:
			if ( file_exists( working_directory  + "scores.txt" ) ) {
				var file = file_text_open_read( working_directory + "scores.txt" );
				var hiscore = 0;
				var readscore = 0;
				while ( !file_text_eof(file) ) {
					readscore = file_text_read_real( file );
					if ( hiscore < readscore ) {
						hiscore = readscore;
					}
					file_text_readln(file);
				}
			} else {
				var hiscore = 0;
			}
			return hiscore;
		case SCORE_WRITE:
			if ( file_exists( working_directory + "scores.txt" ) ) {
				var file = file_text_open_append( working_directory + "scores.txt" );
				file_text_write_real( file, obj_player.score_current );
				file_text_writeln(file);
				file_text_close(file);
			}
			return 0;
		case SCORE_INIT:
			if ( !file_exists( working_directory + "scores.txt" ) ) {
				var file = file_text_open_write( working_directory + "scores.txt" );
				file_text_write_real( file, 0 );
				file_text_writeln(file);
				file_text_close(file);
//				show_message( "Scores file does not exists. Initializing" );
			}
			return 0;
		default:
			return -1;
	}
}

