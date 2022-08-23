obj_player_cirno.lasso_chaining = 300;
obj_player_cirno.lasso_chain += 1 + obj_player_cirno.chain_rank;
obj_player_cirno.score_current += 100 * obj_player_cirno.lasso_chain * obj_player_cirno.chain_rank;	
obj_player_cirno.game_timer += 1;
if (obj_player_cirno.game_timer > 3600) {
	obj_player_cirno.game_timer = 3600;
}

effect_create_above(ef_flare, x, y, 1, make_color_rgb(irandom(255), irandom(255), irandom(255)));
//audio_play_sound(snd_enemy_destroy, 10, false);

