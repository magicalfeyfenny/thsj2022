if (global.combat_mode && other.expander > 0 && other.expander < 80) {	


	if (invuln <= 0) {
		hp -= 1;
		invuln = 90;
		target_speed = 12;
		dspeed = 12;
		target_direction = point_direction(other.x,other.y,x,y);
		direction = target_direction;
		audio_play_sound(snd_ow, 10, false);
	}
	
	if (hp < 1) {
		global.cutscene_mode = false;
		global.cutscene_number = CUTSCENE_NOSCENE;
		global.dialogue_mode = false;
		room_goto(rm_game);
	}


}


