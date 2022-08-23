dx = camera_get_view_x(global.camera);
dy = camera_get_view_y(global.camera);

//debug text
/*
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(	5 + dx,  5 + dy, fps );
draw_text( 20 + dx,300 + dy, scr_input_get( INPUT_LEFT ) );
draw_text( 70 + dx,300 + dy, scr_input_get( INPUT_RIGHT ) );
draw_text( 45 + dx,280 + dy, scr_input_get( INPUT_UP ) );
draw_text( 45 + dx,320 + dy, scr_input_get( INPUT_DOWN ) );
draw_text(150 + dx,300 + dy, mouse_check_button(mb_left) );
draw_text(160 + dx,300 + dy, mouse_check_button(mb_right) );
draw_text(210 + dx,305 + dy, scr_input_get( INPUT_SHOT_RIGHT ) );
draw_text(215 + dx,320 + dy, scr_input_get( INPUT_BOMB ) );
draw_text(190 + dx,305 + dy, scr_input_get( INPUT_SHOT_LEFT ) );
*/

if (!global.cutscene_mode) {
	draw_set_font(fn_cursive);
	draw_set_halign(fa_left);
	draw_text_ext_transformed_color_border( 65 + dx, 5 + dy, floor(obj_player_cirno.score_current), 9, 620, 1, 1, 0, c_silver, c_silver, c_white, c_white, 1, 1, c_black); //6
	if (obj_player_cirno.lasso_chain >= 1) {
		draw_set_halign(fa_right);
		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(620 + dx, 5 + dy, 630 + dx, 105 + dy, false);
		draw_set_alpha(1);
		draw_set_color(c_aqua);
		draw_rectangle(620 + dx, 105 - (max(0,obj_player_cirno.lasso_chaining) / 3) + dy, 630 + dx, 105 + dy, false);
		draw_set_color(c_black);
		draw_rectangle(620 + dx, 5 + dy, 630 + dx, 105 + dy, true);
		draw_set_font(fn_cursivelarge);
		draw_text_ext_transformed_color_border( 620 + dx, 10 + dy, floor(obj_player_cirno.lasso_chain), 9, 620, 1, 1, 0, c_aqua, c_aqua, c_white, c_white, 1, 1, c_black); //6
		draw_set_font(fn_cursive);
		if ( floor(obj_player_cirno.lasso_chain) == 69 ) {
			draw_text_ext_transformed_color_border( 615 + dx, 40 + dy, "NICE!", 9, 620, 1, 1, 10, c_red, c_red, c_orange, c_orange, 1, 1, c_black);
		} else {
			draw_text_ext_transformed_color_border( 615 + dx, 40 + dy, "HIT!", 9, 620, 1, 1, 10, c_red, c_red, c_orange, c_orange, 1, 1, c_black); //6
		}	
	}
	draw_sprite(spr_UI_cirno, 0, 0 + dx, 0 + dy);
	
	draw_sprite(spr_chain_rank, obj_player_cirno.chain_rank, 40 + dx, 20 + dy);
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(5 + dx, 350 + dy, 635 + dx, 355 + dy, false);
	draw_set_alpha(1);
	if (obj_player_cirno.lasso_chaining <= 0) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_lime);
	}
	draw_rectangle(5 + dx, 350 + dy, 5 + ((obj_player_cirno.game_timer / 3600) * 630) + dx, 355 + dy, false);
	draw_set_color(c_black);
	draw_rectangle(5 + dx, 350 + dy, 635 + dx, 355 + dy, true);
	draw_sprite(spr_hourglass, 0, 5 + dx, 320 + dy)
	
	//draw tutorial text
	draw_set_font(fn_help);
	draw_set_halign(fa_left);
		draw_text_ext_transformed_color_border( 5 + dx, 345 + dy, "WASD: move, L mouse: prime lasso, R mouse: capture lasso, ESC: end game", 9, 620, 1, 1, 0, c_blue, c_blue, c_blue, c_blue, tutorial_fadeout / 20, 1, c_white); //6
	}













