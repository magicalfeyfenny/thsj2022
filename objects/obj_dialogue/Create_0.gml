textspew = "";
texttarget = "";
textload = "";
textlines = ["","","","","","",""];
textlinecount = 0;
textlinefadein = 0;
spewlength = 0;
actor_left = "";
actor_left_emote = EMOTE_NEUTRAL;
actor_left_sprite = -1;
actor_right = "";
actor_right_emote = EMOTE_NEUTRAL;
actor_right_sprite = -1;
last_active = LEFT_ACTOR;
text_advance_ready = TEXT_LOADING;
narrator_alpha = 0;
bg_id = BG_NONE;
bg_sprite = -1;

name_test = ds_queue_create();
bg_test = ds_queue_create();
text_test = ds_queue_create();
active_test = ds_queue_create();
emote_test = ds_queue_create();

loopdoop = 0;
tutorial_fadeout = 400;
