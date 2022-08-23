blast--;
if (!blast) {
	change_timer--;
	attack_timer--;
	attacking--;
}
if (blast) {
	dspeed--;
}

if (change_timer <= 0) {
	change_timer = 50 + random(150);
	dspeed = 0.1 + random(0.5);
	direction = random(360);
}

if (attack_timer <= 0) {
	audio_play_sound(snd_spin, 1, false);
	attack_timer = 360 + random(300);
	attacking = 10;
}

