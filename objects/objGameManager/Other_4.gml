/// @description Insert description here
// You can write your code in this editor
var roomName = room_get_name(room);
switch(roomName) {
	/*
	case "Menu" :
		for(var i = 0; i < array_length(options); i++) {
		var option = options[i];
		var button = instance_create_layer(40 + i * 300, room_height - 80, "Instances", objPlayButton);
		with (button)
		{
			action = option;
			text = option;
			image_xscale = 1;
		}
		}
	break;
	*/
	case "rmLectureGame" :
		global.activeNextButton = false;
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
		global.activeNextButton = true;
		break;
}