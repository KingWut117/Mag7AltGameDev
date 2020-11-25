/// @description Insert description here
// You can write your code in this editor
var roomName = room_get_name(room);
switch(roomName) {
	case "Menu" : 
		randomize();
		break;
		
	case "rmInstructions" :
		instance_deactivate_object(objDialogBubbleJim);
		global.activeNextButton = false;
		break;
		
	case "rmDescribeRun" :
		audioProgress = -1;
		global.activeNextButton = false;
		alarm[1] = 5*room_speed;
		instance_activate_object(objDialogBubble)
		break;
		
			
	
	case "rmAlarmClockDeaf" :
		audio_stop_all();
		instance_deactivate_object(objDialogBubble);
		break;
		
	case "rmAlarmClock" :
	case "rmAlarmClockImplant" :
		instance_deactivate_object(objDialogBubble);
		global.activeNextButton = false;
		break;
		
	case "rmTransFromAlarm" :
		instance_deactivate_object(objDialogBubble);
		audio_stop_sound(sbAlarmClockNews);
		audioID = audio_play_sound(sbAlarmTrans, 0, false);
		break;
		
	case "rmLectureGame" :
		audio_stop_sound(sbAlarmTrans);
		global.activeNextButton = false;
		instance_deactivate_object(objInteractButton);
		instance_deactivate_object(objDialogBubble);
		audioID = audio_play_sound(sbTeacherLine1Hearing, 1, false);
		audio_sound_gain(sbTeacherLine1Hearing, 1, 0);
		audio_sound_gain(sbTeacherLine1Hearing, 0.1, 5000);
		alarm[0] = room_speed*5;
		break;
		
	case "rmTransFromLecture" :
		instance_deactivate_object(objDialogBubble);
		audioProgress = 4;
		global.activeNextButton = false;
		audio_stop_sound(sbTeacherResponse2Hearing);
		audio_play_sound(sbTransFromLectureHearing, 0, false);
		break;
			
	case "rmConversation" :
		audioProgress = 5;
		global.activeNextButton = false;
		audio_stop_sound(sbTransFromLectureHearing);
		audio_play_sound(sbNickLine1, 0, false);
		instance_deactivate_object(objDialogBubble);
		instance_deactivate_object(objInteractButton);
		global.convCounter = 0;
		break;
		
	case "rmTransFromConversation" :
		instance_deactivate_object(objDialogBubble);
		audioProgress = 10;
		global.activeNextButton = false;
		audio_stop_sound(sbNickResp4);
		audio_play_sound(sbPlayerLine1GHH,0, false);
		break;
		

	
	case "rmGoingHome" :
		audioProgress = 11;
		global.activeNextButton = false;
		instance_deactivate_object(objDialogBubble);
		instance_deactivate_object(objInteractButton);
		audio_play_sound(sbPlayerLine2GHH, 0, false);
		break;
		
	case "rmTransToImplant" :
		audio_group_load(grpLectureGameImplant);
		break;
		
	case "rmDescribeRunImplant" :
		audio_stop_all();
		break;
		
	case "rmTransFromAlarmImplant" :
		instance_deactivate_object(objDialogBubble);
		implantBeeping = true;
		implantBeepInterval = 15;
		beepVolume = .01;
		alarm[5] = room_speed*implantBeepInterval;
		audioProgress = 0;
		audio_play_sound(sbTransFromAlarmImplant1, 0, false);
		global.activeNextButton = false;
		break;
		
	case "rmLectureGameImplant" :
		implantBeeping = true;
		implantBeepInterval = 10;
		beepVolume = .05;
		alarm[5] = room_speed*implantBeepInterval;
		audioProgress = 1;
		global.activeNextButton = false;
		instance_deactivate_object(objInteractButton);
		instance_deactivate_object(objDialogBubble);
		audioID = audio_play_sound(sbLectureGameImplantTeacher1, 0, false);
		break;
	
	case "rmTransFromLectureImplant" :
		implantBeeping = true;
		implantBeepInterval = 5;
		beepVolume = .1;
		alarm[5] = room_speed*implantBeepInterval;
		instance_deactivate_object(objDialogBubble);
		audioProgress = 6;
		global.activeNextButton = false;
		audio_play_sound(sbTransFromLectureImplant1, 0, false);
		break;
		
	case "rmConversationImplant" :
		implantBeeping = true;
		implantBeepInterval = 2.5;
		beepVolume = .25;
		alarm[5] = room_speed*implantBeepInterval;
		alarm[6] = room_speed*10;
		global.noteProgress = 1;
		NoteMover("left", 1);
		global.activeNextButton = false;
		break;	
			
	case "rmGoingHomeImplant" :
		instance_deactivate_object(objDialogBubble);
		global.activeNextButton = false;
		break;
		
//DEAF ROUTE
///////////////////////////////////////////////////////////////////////////////////////////////////////////

	case "rmConversationDeaf":
		instance_deactivate_object(objDialogBubble);
		instance_deactivate_object(objDialogBubbleEthan);
		instance_deactivate_object(objDialogBubbleJim);
		global.convProgress = 0;
		break;
		
	case "rmGoingHomeDeaf" :
		global.activeNextButton = false
		break;
}