counter++;

if (counter > 180) {
	alpha_cycle = (210 - counter) / 30;
} else {
	alpha_cycle = counter / 30;
}

if ( counter >= countermax ) {
	room_goto_next();
}
	
if ( scr_input_get( INPUT_PAUSE ) ) {
//	game_end();
}
