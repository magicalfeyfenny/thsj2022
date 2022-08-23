countdown--;
if (countdown < 0 ) {
	if (scr_input_get( INPUT_ANY )) {
		global.cutscene_mode = false;
		global.combat_mode = false;
		global.dialogue_mode = false;
		room_goto(rm_title);
	}
}



