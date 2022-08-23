/*if (!audio_is_playing(areatheme)) {
	audio_stop_sound(lovecoloredweh);
	audio_stop_sound(inaudibledream);
	audio_stop_sound(mooninginsect);
	audio_play_sound(areatheme, 0, true);
}
*/
global.camera = view_camera[0];
counter = 0;

depth = -2000

tutorial_fadeout = 400;

audio_stop_all();
audio_play_sound(tomboydaughter, 0, true);
