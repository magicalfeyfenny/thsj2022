image_index = (direction + 22.5) / 45;
if (direction + 22.5 >= 360 ) {
	image_index = 0;
}
if (hp <= 0) {
	instance_destroy();
}	

if ((change_timer < 120 && !attacking && attack_timer > 60) || (attacking) || blast ) {
	if (!place_meeting( x + lengthdir_x( dspeed, direction ), y, obj_wall ) ) {
		x += lengthdir_x( dspeed, direction );
	}
	if (!place_meeting( x, y + lengthdir_y( dspeed, direction ), obj_wall ) ) {
		y += lengthdir_y( dspeed, direction );
	}
}

if (attacking && !blast) {
	playerhit = collision_circle(x, y, 120, obj_player_cirno, true, true);
	ds_list_clear(slam_collide);
	hit = collision_circle_list(x, y, 120, obj_enemy_parent, false, true, slam_collide, false); 
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
			slam_collide[|l].blast = 12;
			slam_collide[|l].dspeed = 12;
			slam_collide[|l].target_direction = point_direction(x,y,slam_collide[|l].x,slam_collide[|l].y);
			slam_collide[|l].direction = slam_collide[|l].target_direction;
		}
	}
}

depth = -y;





