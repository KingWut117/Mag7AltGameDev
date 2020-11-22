/// @description Insert description here
// You can write your code in this editor

if(!global.activeNextButton)
	instance_deactivate_object(objNextButton);
else
	instance_activate_object(objNextButton);


var roomName = room_get_name(room);
switch(roomName) {
	
//HEARING ROUTE
//////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	case "rmLectureGame" :
		instance_deactivate_object(objInteractButton);

		if (audioProgress == 0 && !audio_is_playing(sbPlayerLine1Hearing)) {
			audio_play_sound(sbTeacherLine2Hearing, 0, false);
			audioProgress = 1;
		}
		
		if (audioProgress == 1 && !audio_is_playing(sbTeacherLine2Hearing)) {
			audio_play_sound(sbUmmYesSir, 0, false);
			audioProgress = 2;
		}
		
		if (audioProgress == 2 && !audio_is_playing(sbUmmYesSir)) {
			audio_play_sound(sbTellMeWhatIJustSaid, 0, false);
			audioProgress = 3;
		}
		
		 if (audioProgress == 3 && !audio_is_playing(sbTellMeWhatIJustSaid)) {
			 instance_activate_object(objInteractButton);
			 instance_activate_object(objDialogBubble);
		}
		
		break;
	
	case "rmTransFromLecture":
		if (audioProgress == 4 && !audio_is_playing(sbTransFromLectureHearing)) {
			global.activeNextButton = true;
		}
		break;
	
	case "rmConversation" : 
		if (audioProgress == 5 && !audio_is_playing(sbNickLine1)) {
			audio_play_sound(sbPlayerLine1Conv,0, false);
			audioProgress = 6
		}
		
		if (audioProgress == 6 && !audio_is_playing(sbPlayerLine1Conv)) {
			audio_play_sound(sbNickLine2, 0, false);
			audioProgress = 7;
		}
		
		if (audioProgress == 7 && !audio_is_playing(sbNickLine2)) {
			audio_play_sound(sbPlayerLine2Conv, 0, false);
			audioProgress = 8;
		}
		
		if (audioProgress == 8 && !audio_is_playing(sbPlayerLine2Conv)) {
			audio_play_sound(sbNickLine3, 0, false);
			audioProgress = 9
		}
		
		if (audioProgress == 9 && !audio_is_playing(sbNickLine3)) {
			instance_activate_object(objInteractButton);
		}
		break;
		
	case "rmTransFromConversation" :
		if (audioProgress == 10 && !audio_is_playing(sbPlayerLine1GHH)) {
			global.activeNextButton = true
		}
		break;
		
	case "rmGoingHome" :
		if (audioProgress == 11 && !audio_is_playing(sbPlayerLine2GHH)) {
			audio_play_sound(sbPlayerLine3GHH, 0, false);
			audioProgress = 12;
		}
		
		if (audioProgress == 12 && !audio_is_playing(sbPlayerLine3GHH)) {
			audio_play_sound(sbMomLine1GHH, 0, false);
			audioProgress = 13;
		}
		
		if (audioProgress == 13 && !audio_is_playing(sbMomLine1GHH)) {
			audio_play_sound(sbPlayerLine4GHH, 0, false);
			audioProgress = 14;
		}
		
		if (audioProgress == 14 && !audio_is_playing(sbPlayerLine4GHH)) {
			audio_play_sound(sbMomLine2GHH, 0, false);
			audioProgress = 15
		}
		
		if (audioProgress == 15 && !audio_is_playing(sbMomLine2GHH)) {
			audio_play_sound(sbMomLine3GHH, 0, false);
			audioProgress = 16;
		}
		
		if (audioProgress == 16 && !audio_is_playing(sbMomLine3GHH)) {
			instance_activate_object(objInteractButton);
		}
		break;		
			
//IMPLANT ROUTE
///////////////////////////////////////////////////////////////////////////////////////////////////////

	case "rmTransFromAlarmImplant" :
		if (audioProgress == 0 && !audio_is_playing(sbTransFromAlarmImplant1)) {
			audio_play_sound(sbTransFromAlarmImplant2, 1, false);
			global.activeNextButton = true;
		}
		break;

	case "rmLectureGameImplant" :
		instance_deactivate_object(objInteractButton);

		if (audioProgress == 1 && !audio_is_playing(sbLectureGameImplantTeacher1)) {
			audio_play_sound(sbLectureGameImplantEthanUm, 0, false);
			audioProgress = 2;
		}
		
		if (audioProgress == 2 && !audio_is_playing(sbLectureGameImplantEthanUm)) {
			audio_play_sound(sbLectureGameImplantGregor1, 0, false);
			audioProgress = 3;
		}
		
		if (audioProgress == 3 && !audio_is_playing(sbLectureGameImplantGregor1)) {
			audio_play_sound(sbLectureGameImplantGregor2, 0, false);
			audioProgress = 4;
		}
		
		if (audioProgress == 4 && !audio_is_playing(sbLectureGameImplantGregor2)) {
			audio_play_sound(sbLectureGameImplantTeacher2, 0, false);
			audioProgress = 5;
		}
		
		 if (audioProgress == 5 && !audio_is_playing(sbLectureGameImplantTeacher2)) {
			 instance_activate_object(objInteractButton);
		}
		break;
			
	case "rmTransFromLectureImplant" :
		
		if (audioProgress == 6 && !audio_is_playing(sbTransFromLectureImplant1)) {
			audio_play_sound(sbTransFromLectureImplant2, 0, false);
			audioProgress = 7;
		}
		
		if (audioProgress == 7 && !audio_is_playing(sbTransFromLectureImplant2)) {
			global.activeNextButton = true;
		}
		break;
		
	case "rmGoingHomeImplant" :
	
		if (audioProgress == 8 && !audio_is_playing(sbGoingHomeImplant1)) {
			audio_play_sound(sbGoingHomeImplant2, 0, false);
			audioProgress = 9;
		}
		
		if (audioProgress == 9 && !audio_is_playing(sbGoingHomeImplant2)) {
			audio_play_sound(sbGoingHomeImplant3, 0, false);
			audioProgress = 10;
		}
		
		if (audioProgress == 10 && !audio_is_playing(sbGoingHomeImplant3)) {
			audio_play_sound(sbGoingHomeImplant4, 0, false);
			audioProgress = 11;
		}
		
		if (audioProgress == 11 && !audio_is_playing(sbGoingHomeImplant4)) {
			audio_play_sound(sbGoingHomeImplant5, 0, false);
			audioProgress = 12;
		}
		
		if (audioProgress == 12 && !audio_is_playing(sbGoingHomeImplant5)) {
			global.activeNextButton = true;
		}
		break;
}