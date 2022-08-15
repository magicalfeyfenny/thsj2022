counter++;

if (counter > 1000) {
	alpha_cycle = (970 - counter) / 30;
} else {
	alpha_cycle = counter / 30;
}

if ( counter >= countermax ) {
	room_goto_next();
}

if ( scr_input_get(INPUT_SHOT_RIGHT) ) {
	counter += 10;
}