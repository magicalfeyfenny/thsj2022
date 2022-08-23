blast--;
if (!blast) {
	change_timer--;
}
if (blast) {
	dspeed--;
}


if (change_timer <= 0) {
	change_timer = 50 + random(150);
	dspeed = 0.1 + random(0.5);
	direction = random(360);
}

