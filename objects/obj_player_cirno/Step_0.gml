game_timer--;
if (game_timer <= 0) {
	global.scoring = score_current;
	if (audio_is_playing(snd_player_deathbomb)) {
		audio_stop_sound(snd_player_deathbomb);
	}
	room_goto_next();
}

var up = scr_input_get( INPUT_UP );
var down = scr_input_get( INPUT_DOWN );
var right = scr_input_get( INPUT_RIGHT );
var left = scr_input_get( INPUT_LEFT );
lasso_build = mouse_check_button( mb_left );
lasso_launch = mouse_check_button_released( mb_left );
lasso_contract = mouse_check_button( mb_right );
lasso_release = mouse_check_button_released( mb_right );


var move = false;
if ( up && down ) {
	up = false;
	down = false;
}
if (left && right ) {
	left = false;
	right = false;
}

//8-direction rotation
image_index = (direction + 22.5) / 45;
if (direction + 22.5 >= 360 ) {
	image_index = 0;
}
depth = -y;

//gameplay actions
if (!global.cutscene_mode) {
	//movement
	if (( up || down || left || right ) && invuln < 75) {
		move = true;
		target_speed = UNFOC_SPEED;
		if ( left ) {
			target_direction = 180;
			image_index = 4;
		}
		if ( up ) {
			target_direction = 90;
			image_index = 2;
		}
		if ( right ) {
			target_direction = 0;
			image_index = 0;
		}
		if ( down ) {
			target_direction = 270;
			image_index = 6;
		}
		if ( up && left ) {
			target_direction = 135;
			image_index = 3;
		}
		if ( up && right ) {
			target_direction = 45;
			image_index = 1;
		}
		if ( down && right ) {
			target_direction = 315;
			image_index = 7;
		}
		if ( down && left ) {
			target_direction = 225;
			image_index = 5;
		}
		direction = target_direction;
	}
	if ( move ) {
		if ( dspeed < target_speed ) {
			dspeed += 1;
		} else {
			dspeed = target_speed;
		}
	}

	//lasso mechanics
	if ( lasso_launch || lasso_contract ) { //cannot build lasso while there is an active lasso
		lasso_build = false;
	}
	if ( lasso_release ) {
		lasso_contract = false;	
	}
	if ( invuln >= 75 ) {
		lasso_build = false;
		lasso_launch = false;
		lasso_contract = false;
		lasso_release = false;
		lasso_stored = 0;
		lasso_size = 50;
		lasso_x = 0;
		lasso_y = 0;
		lasso_chaining = 0;
	}
	if ( lasso_build ) { //hold left click to build lasso power
		lasso_size++;
		if ( lasso_size > 200 ) {
			lasso_size = 200;
		}
		lasso_x = mouse_x;
		lasso_y = mouse_y;
	}
	if ( lasso_launch ) { //release left click to throw the lasso and prime a location
		lasso_stored = lasso_size;
		lasso_size = 50;
		lasso_x = mouse_x;
		lasso_y = mouse_y;
	}
	if ( lasso_contract ) { //hold right click to damage enemies and gain points and chain
		lasso_stored--;
		if (!audio_is_playing(snd_player_deathbomb)) {
			audio_play_sound(snd_player_deathbomb, 0, true);
		}
		if (lasso_stored <= 0) {
			lasso_release = true;
		}
		//hurtbox for yukkuris trapped within
		ds_list_clear(lasso_collide);
		var hit = collision_circle_list(lasso_x, lasso_y, lasso_stored, obj_enemy_parent, false, true, lasso_collide, false) 
		if (hit > 0) {
			lasso_chain += hit / 50;
			score_current += 10 * lasso_chain;
			for (var l = 0; l < hit; l++) {
				lasso_collide[|l].hp--;
			}
			lasso_chaining = 300;
		}
	}
	if ( lasso_release ) { //release right-click (or run out of lasso power) to retract lasso
		if (audio_is_playing(snd_player_deathbomb)) {
			audio_stop_sound(snd_player_deathbomb);
		}
		lasso_x = 0;
		lasso_y = 0;
		lasso_stored = 0;
		lasso_size = 50;
	}		
	
	//chain drop penalty
	lasso_chaining--;
	if (lasso_chaining <= 0) {
		lasso_chain = lasso_chain / 1.02;
		game_timer -= 5;
	}
	
}

invuln -= 1;

//friction
if ( !move ) {
	target_speed = 0;
	if ( dspeed > target_speed ) {
		dspeed -= 1;
	} else {
		dspeed = target_speed;
	}
}

//collide with solid walls
if (!place_meeting( x + lengthdir_x( dspeed, direction ), y, obj_wall ) ) {
	x += lengthdir_x( dspeed, direction );
}
if (!place_meeting( x, y + lengthdir_y( dspeed, direction ), obj_wall ) ) {
	y += lengthdir_y( dspeed, direction );
}

//chain rank determination
if ( lasso_chain < 9 ) {
	chain_rank = RANK_UNRANKED;
}
if ( lasso_chain >= 9 ) {
	chain_rank = RANK_E_EASY;
}
if ( lasso_chain >= 69 ) {
	chain_rank = RANK_D_DUMMY;
}
if ( lasso_chain >= 420 ) {
	chain_rank = RANK_C_CUTIE;
}
if ( lasso_chain >=	1234 ) {
	chain_rank = RANK_B_BAKA;
}
if ( lasso_chain >= 2022 ) {
	chain_rank = RANK_A_ALIEN;
}
if ( lasso_chain >= 5555 ) {
	chain_rank = RANK_S_SWEET;
}
if ( lasso_chain >=	8008 ) {
	chain_rank = RANK_SS_SILLY_SPRITE;
}
if ( lasso_chain >= 12345 ) {
	chain_rank = RANK_SSS_SMOKIN_STYLIN_SISTER;
}



//cutscene actions
/*
if ( global.cutscene_mode ) {
	switch (global.cutscene_number) {
		case CUTSCENE_FINAL: {
			if (cutscene_mover) {
				move_towards_point( 736, 768, 2.5 );
				if (x > 734 && x < 738 && y > 766 && y < 770 ) {
					cutscene_mover = false;
					speed = 0;
					direction = 90;
				}
			}
			if (cutscene_anim) {
				spark = instance_create_layer( x, y, "lyr_ground", obj_master_spark);
				with (spark) { 
					direction = point_direction( x, y, obj_cutscene_final.x, obj_cutscene_final.y );
					image_angle = direction;
				}
				audio_play_sound(snd_spark, 10, false);
				cutscene_anim = false;
			}
			if (cutscene_anim_charge) {
				cut_timer++;
				if (cut_timer % 5 == 0) {
					var angle = random(360);
					star = instance_create_layer( x + (64 * dcos(angle)), y + (64 * dsin(angle)), "lyr_ground", obj_marisa_charge_star );
					with (star) {
						direction = point_direction(x, y, other.x, other.y);
						speed = 1.5;
					}
				}
			}
			break;
		}
		default: {
			break;
		}
	}
}
*/
