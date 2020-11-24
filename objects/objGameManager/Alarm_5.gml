/// @description Implant Beep
// You can write your code in this editor
if (implantBeeping) {
	var snd = audio_play_sound(implantBeep, 0, false);
	audio_sound_gain(snd, beepVolume, 0);
	alarm[5] = room_speed*implantBeepInterval;
}