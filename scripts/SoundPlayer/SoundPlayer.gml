// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//creates the audio stream for the given file and returns the sound index
function SoundPlayer(fileName){
	audio = audio_create_stream(fileName);
	
	return audio;
}