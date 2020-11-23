
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
			return "Please note, the experiences portrayed in this game is purposefully elaborated. All experiences and perspectives by the characters are a general sense for Deaf individuals with or without a cochlear implant. Not everyone experiences being Deaf the same. With that being said, our story starts first with Ethan Edwards.";
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
			return "";
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
			return "Ethan's day could have been better, but lets see how Jim's day goes.";
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
			return "Good morning listeners of Crimson 92.8, your leading station in all things music. Currently it is 9:00 AM and time for your morning local news report. Something interesting to start the day, Brickhall Middle School is now integrating deaf students into classes. I applaud the school board for this movement! Well done. We will be right back after this commercial break.";
		}
		//if(roomName == global.ROOMS.ConversationDeaf){
		//	textNum = irandom_range(1, 2);
		//	if(textNum == 1)
		//		return global.DIALOG.Conv1Start1;
		//	else
		//		return global.DIALOG.Conv1Start2;
		//}
		if(roomName == global.ROOMS.DescribeRunDeaf){
			return "Our story will now shift over to Eric, a new student at Brickhall part of the deaf integration program.";
		}
			
		if(roomName == global.ROOMS.GoingHomeDeaf){
			return "Hi honey! i got your favorite song playing already! Focus on the beat, and just enjoy the ride."
		}
		
		if(roomName == global.ROOMS.TransFromAlarmDeaf){
			return "When I first started going to Brickhall Middle School, it was a little difficult to get used to everything. But the one thing I cannot get over is why everyone keeps saying ‘I’m sorry’ when they learn that I am Deaf. What is there to be sorry about? That just makes me feel sorry that they are Hearing. But no matter, after the initial awkwardness I finally get to meet a couple pretty good friends. As a matter of fact, all three of us have the same class times. Until the school gets enough ASL interpreters, I am going to have to rely on Ethan and Jim to help me out.";
		}
		
		if(roomName == global.ROOMS.TransFromConversationDeaf){
			return "You know, after seeing those words from Ethan there is a lot of truth to it. The three of us are so different in terms of listening to sounds, but we all experience it the same. I am sure that if Ethan was at an all Deaf school, he would be needing to pass notes to other students to understand what is going on. And you know what, we would all be okay with that. It is not our stance to pity each other but to embrace the difference and strive for the same common goal. That will be the highlight of the day. Guess I better get going, my mom is taking me home. I like the music that she has on the car ride, it has a nice beat to it.";
		}
		
		if(roomName == global.ROOMS.TransToEnd){
			return "Set up transition text for beginning of the end";
		}
	}
