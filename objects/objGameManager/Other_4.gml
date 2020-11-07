/// @description Insert description here
// You can write your code in this editor
var roomName = room_get_name(room);
switch(roomName) {
	
	case "Menu" : 
		randomize();
		break;
		
	case "rmLectureGame" :
		global.activeNextButton = false;
		instance_deactivate_object(objInteractButton);
		lectureDialog.text = "Proper grammar is important in writing.";
		audioID = audio_play_sound(testSound, 0, false);
		alarm[0] = room_speed*5;
		break;
	
	case "rmAlarmClock" :
	case "rmAlarmClockDeaf" :
	case "rmAlarmClockImplant" :
		instance_deactivate_object(objDialogBubble);
		global.activeNextButton = true;
		break;
			
	case "rmConversation" :
		global.convCounter = 0;
		global.activeNextButton = true;
		break;

	case "rmDescribeRun" :
		global.activeNextButton = false;
		alarm[1] = 5*room_speed;
		break;
}