
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
	//Conversation : "rmConversation",
	TransFromConversation : "rmTransFromConversation",
	GoingHome : "rmGoingHome",
	TransToImplant : "rmTransToImplant",
	
	//IMPLANT ROOMS
	DescribeRunImplant : "rmDescribeRunImplant",
	AlarmClockImplant : "rmAlarmClockImplant",
	TransFromAlarmImplant : "rmTransFromAlarmImplant",
	LectureGameImplant : "rmLectureGameImplant",
	TransFromLectureImplant : "rmTransFromLectureImplant",
	//ConversationImplant : "rmConversationImplant",
	TransFromConversationImplant : "rmTransFromConversationImplant",
	GoingHomeImplant : "rmGoingHomeImplant",
	TransToDeaf : "rmTransToDeaf",
	
	//DEAF ROOMS
	DescribeRunDeaf : "rmDescribeRunDeaf",
	AlarmClockDeaf  : "rmAlarmClockDeaf",
	TransFromAlarmDeaf  : "rmTransFromAlarmDeaf",
	LectureGameDeaf : "rmLectureGameDeaf",
	TransFromLectureDeaf  : "rmTransFromLectureDeaf",
	//ConversationDeaf  : "rmConversationDeaf",
	TransFromConversationDeaf  : "rmTransFromConversationDeaf",
	GoingHomeDeaf  : "rmGoingHomeDeaf",
	TransToEnd: "rmTransToEnd"
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogBubbleWriter(runType, roomName){
	
	//textNum = 0;
	
	if(runType == global.RUN_TYPES.Play){
		
		//HEARING ROUTE DIALOG
		if(roomName == global.ROOMS.AlarmClock){
			return "Good morning listeners of Crimson 92.8, your leading station in all things music. Currently it is 9:00 AM and time for your morning local news report. Something interesting to start the day, Brickhall Middle School is now integrating deaf students into classes. I applaud the school board for this movement! Well done. We will be right back after this commercial break."
			}
	
		//if(roomName == global.ROOMS.Conversation){
		//	textNum = irandom_range(1, 2);
		//	if(textNum == 1)
		//		return global.DIALOG.Conv1Start1;
		//	else
		//		return global.DIALOG.Conv1Start2;
		//}
		
		if(roomName == global.ROOMS.DescribeRun){
			return "Please note, the experiences portrayed in this game is purposefully elaborated. All experiences and perspectives by the characters are a general sense for Deaf individuals with or without a cochlear implant. Not everyone experiences being Deaf the same.";
		}
		if(roomName == global.ROOMS.LectureGame){
			return "Mr. Edwards, Can you tell me what I just said?";
		}
			
		if(roomName == global.ROOMS.GoingHome){
			return "Hey sweety how was your day?"
		}
		
		if(roomName == global.ROOMS.TransFromAlarm){
			return "Well, guess it’s time to get this day over with. If I had a choice I would be sleeping comfortably in bed. Why do they have us go to school so early? Don’t they know that none of us want to be here let alone this early? But it’s what ever, its not like I’m going to remember this place. Now to start off the day with English.";
		}
		
		if(roomName == global.ROOMS.TransFromLecture){
			return "Yep, that was pretty much the only highlight of the day. Just the same old routine. Go to class, pretend to pay attention, get called on when you least expect it, finish class, and repeat. Luckily my other classes today were movies and interactive stuff. Its already lunch time, better meet up with Nick.";
		}
		
		if(roomName == global.ROOMS.TransFromConversation){
			return "The day sure flew by today, it almost feels like lunch was a few minutes ago, weird. Well, I aint complaining. I am free!";
		}
		
		if(roomName == global.ROOMS.TransToImplant){
			return "Set up transition text for beginning of implant route";
		}
		
		
		
		
		//IMPLANT ROUTE DIALOG
		if(roomName == global.ROOMS.AlarmClockImplant){
			return "BREAKING NEWS: Deaf kids allowed at school";
		}
		//if(roomName == global.ROOMS.ConversationImplant){
		//	textNum = irandom_range(1, 2);
		//	if(textNum == 1)
		//		return global.DIALOG.Conv1Start1;
		//	else
		//		return global.DIALOG.Conv1Start2;
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
		//if(roomName == global.ROOMS.ConversationDeaf){
		//	textNum = irandom_range(1, 2);
		//	if(textNum == 1)
		//		return global.DIALOG.Conv1Start1;
		//	else
		//		return global.DIALOG.Conv1Start2;
		//}
		if(roomName == global.ROOMS.DescribeRunDeaf){
			return "This is the beginning of the deaf route";
		}
		if(roomName == global.ROOMS.LectureGameDeaf){
			return "Lecture Game (Deaf)";
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
