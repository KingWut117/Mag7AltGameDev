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
		alarm[0] = 5*room_speed;
		break;
	
	case "rmAlarmClock" :
		instance_deactivate_object(objDialogBubble);
		global.activeNextButton = true;
		break;
		
	case "rmBullies" :
		global.activeNextButton = true;
		break;
		
	case "rmCarHonks" :
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