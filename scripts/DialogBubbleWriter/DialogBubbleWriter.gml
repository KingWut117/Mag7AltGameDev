
global.RUN_TYPES = {
	Hearing : "Hearing",
	Implant : "Implant",
	Deaf : "Deaf"
}

global.ROOMS = {
	AlarmClock : "rmAlarmClock",
	Bullies : "rmBullies",
	CarHonks : "rmCarHonks",
	Conversation : "rmConversation",
	DescribeRun : "rmDescibeRun",
	LectureGame : "rmLectureGame"
}

global.DIALOGUE = {
	Conversation1 : "Text",
	Conversation2 : "Text2"
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogBubbleWriter(runType, roomName){
	
	textNum = 0;
	
	if(runType == global.RUN_TYPES.Hearing){
		if(roomName == global.ROOMS.AlarmClock){
			return "Alarm Clock (hearing)";
		}
		if(roomName == global.ROOMS.Bullies){
			return "Bullies (hearing)";
		}
		if(roomName == global.ROOMS.CarHonks){
			return "Car Honks (hearing)";
		}
		if(roomName == global.ROOMS.Conversation){
			textNum = irandom(1)+1;
			if(textNum == 1)
				return global.DIALOGUE.Conversation1;
			else
				return global.DIALOGUE.Conversation2;
		}
		if(roomName == global.ROOMS.DescribeRun){
			return "Describe Run (hearing)";
		}
		if(roomName == global.ROOMS.LectureGame){
			
			return "Lecture Game (hearing)";
		}
	}
	
	if(runType == global.RUN_TYPES.Implant){
		if(roomName == global.ROOMS.AlarmClock){
			return "Alarm Clock (implant)";
		}
		if(roomName == global.ROOMS.Bullies){
			return "Bullies (implant)";
		}
		if(roomName == global.ROOMS.CarHonks){
			return "Car Honks (implant)";
		}
		if(roomName == global.ROOMS.Conversation){
			return "Conversation (implant)";
		}
		if(roomName == global.ROOMS.DescribeRun){
			return "Describe Run (implant)";
		}
		if(roomName == global.ROOMS.LectureGame){
			return "Lecture Game (implant)";
		}
	}
	if(runType == global.RUN_TYPES.Deaf){
		if(roomName == global.ROOMS.AlarmClock){
			return "Alarm Clock (deaf)";
		}
		if(roomName == global.ROOMS.Bullies){
			return "Bullies (deaf)";
		}
		if(roomName == global.ROOMS.CarHonks){
			return "Car Honks (deaf)";
		}
		if(roomName == global.ROOMS.Conversation){
			return "Conversation (deaf)";
		}
		if(roomName == global.ROOMS.DescribeRun){
			return "Describe Run (deaf)";
		}
		if(roomName == global.ROOMS.LectureGame){
			return "Lecture Game (deaf)";
		}
	}
}