
global.RUN_TYPES = {
	Play: "Play",
	
}

global.ROOMS = {
	//HEARING ROOMS
	DescribeRun : "rmDescribeRun",
	AlarmClock : "rmAlarmClock",
	TransFromAlarm : "rmTransFromAlarm",
	LectureGame : "rmLectureGame",
	TransFromLecture : "rmTransFromLecture",
	Conversation : "rmConversation",
	TransFromConversation : "rmTransFromConversation",
	GoingHome : "rmGoingHome",
	TransToImplant : "rmTransToImplant",
	
	//IMPLANT ROOMS
	DescribeRunImplant : "rmDescribeRunImplant",
	AlarmClockImplant : "rmAlarmClockImplant",
	TransFromAlarmImplant : "rmTransFromAlarmImplant",
	LectureGameImplant : "rmLectureGameImplant",
	TransFromLectureImplant : "rmTransFromLectureImplant",
	ConversationImplant : "rmConversationImplant",
	TransFromConversationImplant : "rmTransFromConversationImplant",
	GoingHomeImplant : "rmGoinghomeImplant",
	TransToDeaf : "rmTransToDeaf",
	
	//DEAF ROOMS
	DescribeRunDeaf : "rmDescribeRunDeaf ",
	AlarmClockDeaf  : "rmAlarmClockDeaf ",
	TransFromAlarmDeaf  : "rmTransFromAlarmDeaf ",
	LectureGameDeaf : "rmLectureGameDeaf ",
	TransFromLectureDeaf  : "rmTransFromLectureDeaf ",
	ConversationDeaf  : "rmConversationDeaf ",
	TransFromConversationDeaf  : "rmTransFromConversationDeaf ",
	GoingHomeDeaf  : "rmGoinghomeDeaf ",
	TransToEnd: "rmTransToEnd"
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogBubbleWriter(runType, roomName){
	
	textNum = 0;
	
	if(runType == global.RUN_TYPES.Play){
		
		//HEARING ROUTE DIALOG
		if(roomName == global.ROOMS.AlarmClock){
			return "BREAKING NEWS: Deaf kids allowed at school";
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
			
		if(roomName == global.ROOMS.GoingHome){
			return "Set up going home room here"
		}
		
		if(roomName == global.ROOMS.TransFromAlarm){
			return "Set up transition text for Lecture Game";
		}
		
		if(roomName == global.ROOMS.TransFromLecture){
			return "Set up transition text for Conversation with Friend";
		}
		
		if(roomName == global.ROOMS.TransFromConversation){
			return "Set up transition text for conclusion of route";
		}
		
		if(roomName == global.ROOMS.TransToImplant){
			return "Set up transition text for beginning of implant route";
		}
		
		
		
		
		//IMPLANT ROUTE DIALOG
		if(roomName == global.ROOMS.AlarmClockImplant){
			return "BREAKING NEWS: Deaf kids allowed at school";
		}
		if(roomName == global.ROOMS.ConversationImplant){
			textNum = irandom_range(1, 2);
			if(textNum == 1)
				return global.DIALOG.Conv1Start1;
			else
				return global.DIALOG.Conv1Start2;
		}
		if(roomName == global.ROOMS.DescribeRunImplant){
			return "This is the beginning of the implant route";
		}
		if(roomName == global.ROOMS.LectureGameImplant){
			return "Lecture Game (hearing)";
		}
			
		if(roomName == global.ROOMS.GoingHomeImplant){
			return "Set up going home for implant route here"
		}
		
		if(roomName == global.ROOMS.TransFromAlarmImplant){
			return "Set up transition text for Lecture Game Implant";
		}
		
		if(roomName == global.ROOMS.TransFromLectureImplant){
			return "Set up transition text for Conversation with Friend (Implant)";
		}
		
		if(roomName == global.ROOMS.TransFromConversationImplant){
			return "Set up transition text for conclusion of route (Implant)";
		}
		
		if(roomName == global.ROOMS.TransToDeaf){
			return "Set up transition text for beginning of deaf route";
		}
			
			
		
		
		//DEAF ROUTE DIALOG
		if(roomName == global.ROOMS.AlarmClockDeaf){
			return "BREAKING NEWS: Deaf kids allowed at school";
		}
		if(roomName == global.ROOMS.ConversationDeaf){
			textNum = irandom_range(1, 2);
			if(textNum == 1)
				return global.DIALOG.Conv1Start1;
			else
				return global.DIALOG.Conv1Start2;
		}
		if(roomName == global.ROOMS.DescribeRunDeaf){
			return "This is the beginning of the deaf route";
		}
		if(roomName == global.ROOMS.LectureGameDeaf){
			return "Lecture Game (hearing)";
		}
			
		if(roomName == global.ROOMS.GoingHomeDeaf){
			return "Set up going home for deaf route here"
		}
		
		if(roomName == global.ROOMS.TransFromAlarmDeaf){
			return "Set up transition text for Lecture Game (Deaf)";
		}
		
		if(roomName == global.ROOMS.TransFromLectureDeaf){
			return "Set up transition text for Conversation with Friend (Deaf)";
		}
		
		if(roomName == global.ROOMS.TransFromConversationDeaf){
			return "Set up transition text for conclusion of route (Deaf)";
		}
		
		if(roomName == global.ROOMS.TransToEnd){
			return "Set up transition text for beginning of the end";
		}
	}
}