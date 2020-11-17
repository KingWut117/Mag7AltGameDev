/// @description Insert description here
// You can write your code in this editor
var roomName = room_get_name(room);
switch(roomName) {
	
	case "Menu" : 
		randomize();
		break;
			
	case "rmAlarmClock" :
	case "rmAlarmClockDeaf" :
	case "rmAlarmClockImplant" :
		instance_deactivate_object(objDialogBubble);
		global.activeNextButton = false;
		break;
		
	case "rmTransFromAlarm" :
		audio_stop_sound(sbAlarmClockNews)
		audioID = audio_play_sound(sbAlarmTrans, 0, false);
		break;
		
	case "rmLectureGame" :
		audio_stop_sound(sbAlarmTrans)
		global.activeNextButton = false;
		instance_deactivate_object(objInteractButton);
		lectureDialog.text = "Proper grammar is important in writing.";
		audioID = audio_play_sound(sbTeacherLine1Hearing, 1, false);
		audio_sound_gain(sbTeacherLine1Hearing, 1, 0);
		audio_sound_gain(sbTeacherLine1Hearing, 0.1, 5000);
		alarm[0] = room_speed*5;
		break;
			
	case "rmConversation" :
		global.convCounter = 0;
		global.activeNextButton = true;
		break;

	case "rmDescribeRun" :
		global.activeNextButton = false;
		alarm[1] = 5*room_speed;
		break;
		
	case "rmGoingHome" :
	case "rmGoingHomeImplant" :
	case "rmGoingHomeDeaf" :
		global.activeNextButton = false
		break;
	
}