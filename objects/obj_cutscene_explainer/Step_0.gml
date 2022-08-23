if (global.cutscene_mode) {	if (timeline_running && global.dialogue_mode ) {
		timeline_running = false;
	}
	if (!timeline_running && !global.dialogue_mode ) {
		timeline_running = true;
	}
}
	
