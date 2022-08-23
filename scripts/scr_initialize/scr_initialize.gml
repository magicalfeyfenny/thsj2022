	/// @function							scr_initialize();

#region //define global constants
	#macro LEFT -1
	#macro RIGHT 1
	#macro TOP -1
	#macro BOTTOM 1
	#macro CIRCLE 360
	
	//inputs
	#macro INPUT_UP "input_up"
	#macro INPUT_DOWN "input_down"
	#macro INPUT_LEFT "input_left"
	#macro INPUT_RIGHT "input_right"
	#macro INPUT_SHOT_LEFT "input_shot_left"
	#macro INPUT_SHOT_RIGHT "input_shot_right"
	#macro INPUT_FOCUS "input_focus"
	#macro INPUT_BOMB "input_bomb"
	#macro INPUT_PAUSE "input_pause"
	#macro INPUT_ANY "input_any"

	//window
	#macro WINDOW_BASE_WIDTH 640
	#macro WINDOW_BASE_HEIGHT 360
	#macro VIEW_MULTIPLY_360 1
	#macro VIEW_MULTIPLY_720 2
	#macro VIEW_MULTIPLY_1080 3
	#macro VIEW_MULTIPLY_1440 4
	#macro VIEW_MULTIPLY_2160 6
	
	//menus & files
	#macro OPTIONS_INPUT_TYPE "options_input"
	#macro OPTIONS_FULLSCREEN "options_full_toggle"
	#macro OPTIONS_FULLMULT "options_full_res"
	#macro OPTIONS_WINDOWMULT "options_window_res"
	
	#macro SCORE_READ 0
	#macro SCORE_WRITE 1
	#macro SCORE_INIT 2
	#macro SCORE_ZERO 0
	
	//particle systems
	#macro PART_EMIT_CHERRYRAIN 0
	#macro PART_TYPE_CHERRYFOUNTAIN 0
	
	//title
	#macro TITLE_MENU_CHOICES 2
//	#macro TITLE_MENU_TEXT_CONTINUE "Continue"
	#macro TITLE_MENU_TEXT_NEW_GAME "Start Game"
//	#macro TITLE_MENU_TEXT_LOAD_GAME "Load Game"
//	#macro TITLE_MENU_TEXT_MUSIC_ROOM "Music Room"
//	#macro TITLE_MENU_TEXT_OPTIONS "Options"
	#macro TITLE_MENU_TEXT_EXIT_GAME "Exit"
//	#macro TITLE_MENU_CHOICE_CONTINUE 1
	#macro TITLE_MENU_CHOICE_NEW_GAME 1
//	#macro TITLE_MENU_CHOICE_LOAD_GAME 3
//	#macro TITLE_MENU_CHOICE_MUSIC_ROOM 4
//	#macro TITLE_MENU_CHOICE_OPTIONS 5
	#macro TITLE_MENU_CHOICE_EXIT_GAME 2
	#macro TITLE_MODE_START_FADEIN 0
	#macro TITLE_MODE_START_READY 1
	#macro TITLE_MODE_MENU_FADEIN 2
	#macro TITLE_MODE_MENU_READY 3
	
	//dialogue
	#macro TEXT_LOADING -1
	#macro TEXT_TYPING 0
	#macro TEXT_READY 1
	#macro EMOTE_NEUTRAL 0
	#macro EMOTE_HAPPY 1
	#macro EMOTE_SAD 2
	#macro EMOTE_CONFUSED 3
	#macro EMOTE_ANGRY 4
	#macro EMOTE_OUCH 5
	#macro LEFT_ACTOR 0
	#macro RIGHT_ACTOR 1
	#macro NARRATOR 2
	#macro BG_NONE 0
	#macro BG_TEST 1
	#macro BG_MISTYLAKE 2
	#macro BG_SDM 3
	#macro BG_FAIR 4
	
	//cutscene
	#macro CUTSCENE_NOSCENE 0
	#macro CUTSCENE_OPENING 1	
	#macro CUTSCENE_FINAL 4
	
	//scoring
	#macro RANK_UNRANKED 0
	#macro RANK_E_EASY 1
	#macro RANK_D_DUMMY 2
	#macro RANK_C_CUTIE 3
	#macro RANK_B_BAKA 4
	#macro RANK_A_ALIEN 5
	#macro RANK_S_SWEET 6
	#macro RANK_SS_SILLY_SPRITE 7
	#macro RANK_SSS_SMOKIN_STYLIN_SISTER 8
	
	//player	
	#macro SPAWN_X 60
	#macro SPAWN_Y 180
	#macro FOCUS_SPEED 3
	#macro UNFOC_SPEED 6
	
	
	
#endregion

function scr_initialize() {
	randomize();
	scr_options_init();
	scr_input_init();
	scr_scores( SCORE_INIT );
	global.cutscene_mode = false;
	global.cutscene_number = CUTSCENE_NOSCENE;
	global.dialogue_mode = false;
	global.combat_mode = false;
	window_set_cursor(cr_none);
	scr_particles_init();
}


