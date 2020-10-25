
global.RUN_TYPES = {
	Play: "Play",
	
}

global.ROOMS = {
	AlarmClock : "rmAlarmClock",
	Bullies : "rmBullies",
	CarHonks : "rmCarHonks",
	Conversation : "rmConversation",
	DescribeRun : "rmDescribeRun",
	LectureGame : "rmLectureGame",
	Conclusion : "rmConclusion"
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogBubbleWriter(runType, roomName){
	
	textNum = 0;
	
	if(runType == global.RUN_TYPES.Play){
		if(roomName == global.ROOMS.AlarmClock){
			return "BREAKING NEWS: Deaf kids allowed at school";
		}
		if(roomName == global.ROOMS.Bullies){
			return "Look, the chosen one is coming！HAHAHAHA";
		}
		if(roomName == global.ROOMS.CarHonks){
			return "I cant hear the car honking";
		}
		if(roomName == global.ROOMS.Conversation){
			textNum = irandom_range(1, 2);
			if(textNum == 1)
				return global.DIALOG.Conv1Start1;
			else
				return global.DIALOG.Conv1Start2;
		}
		if(roomName == global.ROOMS.DescribeRun){
			return "The perspectives portrayed in this story do not apply to all individuals, hearing or Deaf, referenced in this game. This game is meant to provide exaggerated experiences that would not otherwise be understood.";
		}
		if(roomName == global.ROOMS.LectureGame){
			return "Lecture Game (hearing)";
		}
			
		if(roomName == global.ROOMS.Conclusion){
			return "Regardless of who you are and what you background status is. We all walk the same path of life and experience the world as it is meant to be. Through your own eyes as your own world."
		}
	}
}
	
//	if(runType == global.RUN_TYPES.Implant){
//		if(roomName == global.ROOMS.AlarmClock){
//			return "Alarm Clock (implant)";
//		}
//		if(roomName == global.ROOMS.Bullies){
//			return "Bullies (implant)";
//		}
//		if(roomName == global.ROOMS.CarHonks){
//			return "Car Honks (implant)";
//		}
//		if(roomName == global.ROOMS.Conversation){
//			return "Conversation (implant)";
//		}
//		if(roomName == global.ROOMS.DescribeRun){
//			return "Describe Run (implant)";
//		}
//		if(roomName == global.ROOMS.LectureGame){
//			return "Lecture Game (implant)";
//		}
//	}
//	if(runType == global.RUN_TYPES.Deaf){
//		if(roomName == global.ROOMS.AlarmClock){
//			return "Alarm Clock (deaf)";
//		}
//		if(roomName == global.ROOMS.Bullies){
//			return "Bullies (deaf)";
//		}
//		if(roomName == global.ROOMS.CarHonks){
//			return "Car Honks (deaf)";
//		}
//		if(roomName == global.ROOMS.Conversation){
//			return "Conversation (deaf)";
//		}
//		if(roomName == global.ROOMS.DescribeRun){
//			return "Describe Run (deaf)";
//		}
//		if(roomName == global.ROOMS.LectureGame){
//			return "Lecture Game (deaf)";
//		}
//	}
//}