blast--;
if (!blast) {
	change_timer--;
	attack_timer--;
	attacking--;
}
if (blast) {
	dspeed--;
}

if (change_timer <= 0 && !attacking ) {
	change_timer = 50 + random(150);
	dspeed = 0.1 + random(0.5);
	direction = random(360);
}
if (attack_timer <= 90 && attack_timer >= 50 && !attacking) {
	if (!soundplayed) {
		audio_play_sound(snd_boing, 1, false);
		soundplayed = true;
	}
	attack_x = obj_player_cirno.x; 
	attack_y = obj_player_cirno.y;
}

if (attack_timer <= 0) {
	soundplayed = false;
	attack_timer = 720 + random(300);
	attacking = 5;
	x = attack_x;
	y = attack_y;
}




