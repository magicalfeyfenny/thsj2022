tutorial_fadeout--;

if (global.dialogue_mode) {
	if (text_advance_ready == TEXT_LOADING && !ds_queue_empty(name_test) && !ds_queue_empty(name_test) && !ds_queue_empty(active_test) && !ds_queue_empty(emote_test) && !ds_queue_empty(bg_test)) {
		text_advance_ready = TEXT_TYPING;
		bg_id = ds_queue_dequeue(bg_test);
		switch ( bg_id ) {
			case BG_NONE: 
				bg_sprite = -1;
				break;
			case BG_TEST:
				bg_sprite = spr_bg_test;
				break;
			case BG_MISTYLAKE:
				bg_sprite = spr_bg_mistylake;
				break;
			case BG_SDM:
				bg_sprite = spr_bg_scarletdevilmansion;
				break;
			case BG_FAIR:
				bg_sprite = spr_bg_fairground;
				break;
			default:
				bg_sprite = -1;
				break;
		}
		actor_left = ds_queue_dequeue(name_test);
		actor_left_emote = ds_queue_dequeue(emote_test);
		switch ( actor_left_emote ) {
			case EMOTE_NEUTRAL:
				actor_left_sprite = asset_get_index( "spr_" + string_lower(actor_left) + "_0_neutral" );
				break;
			case EMOTE_HAPPY:
				actor_left_sprite = asset_get_index( "spr_" + string_lower(actor_left) + "_1_happy" );
				break;
			case EMOTE_SAD:
				actor_left_sprite = asset_get_index( "spr_" + string_lower(actor_left) + "_2_sad" );
				break;
			case EMOTE_CONFUSED:
				actor_left_sprite = asset_get_index( "spr_" + string_lower(actor_left) + "_3_confused" );
				break;
			case EMOTE_ANGRY:
				actor_left_sprite = asset_get_index( "spr_" + string_lower(actor_left) + "_4_angry" );
				break;
			case EMOTE_OUCH:
				actor_left_sprite = asset_get_index( "spr_" + string_lower(actor_left) + "_5_ouch" );
				break;
			default:
				actor_left_sprite = -1;
				break;
		}
		
		actor_right = "";
		if (!ds_queue_empty(name_test) && !ds_queue_empty(emote_test)) {
			actor_right = ds_queue_dequeue(name_test);
			actor_right_emote = ds_queue_dequeue(emote_test);
			switch ( actor_right_emote ) {
				case 0:
					actor_right_sprite = asset_get_index( "spr_" + string_lower(actor_right) + "_0_neutral" );
					break;
				case 1:
					actor_right_sprite = asset_get_index( "spr_" + string_lower(actor_right) + "_1_happy" );
					break;
				case 2:
					actor_right_sprite = asset_get_index( "spr_" + string_lower(actor_right) + "_2_sad" );
					break;
				case 3:
					actor_right_sprite = asset_get_index( "spr_" + string_lower(actor_right) + "_3_confused" );
					break;
				case 4:
					actor_right_sprite = asset_get_index( "spr_" + string_lower(actor_right) + "_4_angry" );
					break;
				case 5:
					actor_right_sprite = asset_get_index( "spr_" + string_lower(actor_right) + "_5_ouch" );
					break;
				default:
					actor_right_sprite = -1;
					break;
			}
		}
		textload = ds_queue_dequeue(text_test);
		texttarget = string_replace_all(textload, "#", "\n" );
		textspew = "";
		textlines = [ "", "", "", "", "", "", "" ];
		textlinecount = 1;
		spewlength = 1;
		last_active = ds_queue_dequeue(active_test);
	} 
	
	if (text_advance_ready == TEXT_TYPING ) {
		if ( last_active == NARRATOR) {
			for( var i = 1; i <= string_length(texttarget); i++ ) {
				textlines[textlinecount] += string_char_at(texttarget, spewlength);
				if (string_char_at(texttarget, spewlength) == "\n") {
					textlinecount++;
				}
				spewlength++;
			}
			textlinefadein++;
			if (keyboard_check_pressed(ord("Z")) || keyboard_check(vk_control)) {
				textlinefadein = 1000;
				keyboard_clear(ord("Z"));
				keyboard_clear(vk_control);
			}
			if ( textlinefadein >= 60 + (90 * textlinecount) ) {
				text_advance_ready = TEXT_READY;
			}	
		}
		
		if (last_active == RIGHT_ACTOR || last_active == LEFT_ACTOR) {
			textspew += string_char_at(texttarget, spewlength);
			audio_play_sound( snd_typewriter, 0, false );
			spewlength++;
			if (keyboard_check_pressed(ord("Z")) || keyboard_check(vk_control)) {
				textspew = texttarget;
				keyboard_clear(ord("Z"));
				keyboard_clear(vk_control);
			}
			if (textspew == texttarget) {
				text_advance_ready = TEXT_READY;
			}
		}
	}
	
	if (text_advance_ready == TEXT_READY) {
		if ( keyboard_check_pressed(ord("Z")) || keyboard_check(vk_control)) {
			textlinefadein = 0;
			text_advance_ready = TEXT_LOADING;
			if (ds_queue_empty(name_test) || ds_queue_empty(text_test) || ds_queue_empty(active_test) || ds_queue_empty(emote_test)) {
				global.dialogue_mode = false;
			}
		}
	}
	
}




























