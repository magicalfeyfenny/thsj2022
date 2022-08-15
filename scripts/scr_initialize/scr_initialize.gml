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
	
	//player	
	#macro SPAWN_X 60
	#macro SPAWN_Y 180
	#macro FOCUS_SPEED 3
	#macro UNFOC_SPEED 6
	#macro SHOT_SPEED 8
	
	#macro SHOT_NORMAL_DELAY 5
	#macro SHOT_NORMAL_DAMAGE 5
	#macro SHOT_NORMAL_SPEED 8
	#macro SHOT_NORMAL_LIFETIME 50
	#macro SHOT_FLAME_DELAY 2
	#macro SHOT_FLAME_DAMAGE 0.5
	#macro SHOT_FLAME_SPEED 10
	#macro SHOT_FLAME_FRICTION 0.3
	#macro SHOT_FLAME_LIFETIME 30
	#macro SHOT_LASER_DELAY 30
	#macro SHOT_LASER_LIFETIME 90
	#macro SHOT_LASER_DAMAGE 1
	#macro SHOT_LASER_ARM 20
	#macro SHOT_MISSILE_DELAY 5
	#macro SHOT_MISSILE_DAMAGE 8
	#macro SHOT_MISSILE_SPEED 8
	#macro SHOT_MISSILE_TARGET_DELAY 6
	#macro SHOT_MISSILE_LIFETIME 50
	
	#macro PLAYER_POWERUP_NORMAL 0
	#macro PLAYER_POWERUP_FLAMES 1
	#macro PLAYER_POWERUP_LASER 2
	#macro PLAYER_POWERUP_MISSILE 3
	
	
	//cutscene
	#macro CUTSCENE_NOSCENE 0
	#macro CUTSCENE_OPENING 1
	#macro CUTSCENE_MIDBOSS 2
	#macro CUTSCENE_BOSS 3
	#macro CUTSCENE_FINAL 4
	
	//particle systems
	#macro PART_EMIT_CHERRYRAIN 0
	#macro PART_TYPE_CHERRYFOUNTAIN 0
	
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
	scr_particles_init();
}