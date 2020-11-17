/// @description Insert description here
// You can write your code in this editor

if(!global.activeNextButton)
	instance_deactivate_object(objNextButton);
else
	instance_activate_object(objNextButton);


var roomName = room_get_name(room);
switch(roomName) {
	
	case "rmLectureGame" :
		instance_deactivate_object(objInteractButton);

		if (audioProgress == 0 && !audio_is_playing(sbPlayerLine1Hearing)) {
			audio_play_sound(sbTeacherLine2Hearing, 0, false);
			audioProgress = 1
		}
		
		if (audioProgress == 1 && !audio_is_playing(sbTeacherLine2Hearing)) {
			audio_play_sound(sbPlayerLineInHeadHearing, 0, false);
			audioProgress = 2
		}
		
		if (audioProgress == 2 && !audio_is_playing(sbPlayerLineInHeadHearing)) {
			instance_activate_object(objInteractButton)
		}
			
}
			
			
			
			
			
			
		