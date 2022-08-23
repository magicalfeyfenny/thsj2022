image_index = (direction + 22.5) / 45;
if (direction + 22.5 >= 360 ) {
	image_index = 0;
}
if (hp <= 0) {
	instance_destroy();
}	

if ((change_timer < 120 && !attacking && attack_timer > 60	) || blast ) {
	if (!place_meeting( x + lengthdir_x( dspeed, direction ), y, obj_wall ) ) {
		x += lengthdir_x( dspeed, direction );
	}
	if (!place_meeting( x, y + lengthdir_y( dspeed, direction ), obj_wall ) ) {
		y += lengthdir_y( dspeed, direction );
	}
}

if (attacking && !blast) {
	direction += 45;
	playerhit = collision_circle(x, y, 150, obj_player_cirno, true, true);
	ds_list_clear(spin_collide);
	hit = collision_circle_list(x, y, 150, obj_enemy_parent, false, true, spin_collide, false); 
	if (playerhit) {
		if (audio_is_playing(snd_player_deathbomb)) {
			audio_stop_sound(snd_player_deathbomb);
		}
		audio_play_sound(snd_ow, 1, false);
		playerhit.invuln = 90;
		playerhit.dspeed = 12;
		playerhit.target_direction = point_direction(x,y,playerhit.x,playerhit.y);
		playerhit.direction = playerhit.target_direction;
	}
	if (hit > 0) {
		for (var l = 0; l < hit; l++) {
			spin_collide[|l].blast = 12;
			spin_collide[|l].dspeed = 12;
			spin_collide[|l].target_direction = point_direction(x,y,spin_collide[|l].x,spin_collide[|l].y);
			spin_collide[|l].direction = spin_collide[|l].target_direction;
		}
	}
}

depth = -y;




