// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//global.DIALOG = {
//	Conv1Start1 : "Hey, how was class this morning?",
//	Conv1Start2 : "So what did the teacher do to you today?",
	
//	Conv1Positive1 : "Class was fine, we're supposed to start on a new group project tomorrow.",
//	Conv1Positive2 : "The teacher was fine today, she just asked me one question today.",
//	Conv1Negative1 : "Class was awful! I got no sleep and couldn't focus all class.",
//	Conv1Negative2 : "My teacher has it out for me, I think she just wants to torture me.",
//	Conv1Neutral1 : "Class was fine.",
//	Conv1Neutral2 : "I was half asleep all class so I didn't really pay attention.",
//	Conv1Sarcastic1 : "Class was fantastic! I lost my lucky pencil.",
//	Conv1Sarcastic2 : "You know today was better, the teacher only embarrassed me once.",
	
//	//Conv1Response1 : "Wow, I had no idea something like that could happen.",
//	//Conv1Response2 : "Really? That seems surprising to me.",
	
//	Conv2Positive1 : "I guess it wasn't that bad, at least I got to class on time.",
//	Conv2Positive2 : "You know I guess it was not that big of a deal and besides it’s Pizza day!",
//	Conv2Negative1 : "Class was just really bad this morning, I can’t wait for summer.",
//	Conv2Negative2 : "I still can’t stand the teacher, I want to be homeschooled.",
//	Conv2Neutral1 : "I guess I can just continue on with my day, it’s a nice day today.",
//	Conv2Neutral2 : "I just want to get to the end of school I have some homework I need to finish.",
//	Conv2Sarcastic1 : "You know what’s really great? I can go home in 2 hours!",
//	Conv2Sarcastic2 : "I can’t wait for tomorrow! Because today will be over by then.",
	
	//Conv2Response1 : "I guess you’re happy that class is over for this week?",
	//Conv2Response2 : "Well I’m okay with school right now, I got an A on my quiz yesterday.",
	
	
//}



function InteractButtonPressed(buttonName){
	switch(buttonName)
	{
		
	// Alarm Clock Scene
	case "alarmButton" : 
	case "alarmButtonDeaf" : 
	case "alarmButtonImplant" : 
		instance_activate_object(objDialogBubble); 
		audioID = audio_play_sound(sbAlarmClockNews, 0, false)
		is_playing_sound = 0
		if audio_is_playing(sbAlarmClockNews){
			global.activeNextButton = false;
			is_playing_sound = 1
		}
		if (is_playing_sound == 1){
			global.activeNextButton = true;
		}

		break;
		
	//Lecture Game Scene
	case "lectureWrongButton1" : 
		audio_play_sound(sbTeacherResponse1Hearing, 0, false);
		break;
		
	case "lectureWrongButton2" : 
		audio_play_sound(sbTeacherResponse3Hearing, 0, false);
		break;
		
	case "lectureWrongButton3" : 
		audio_play_sound(sbTeacherResponse4Hearing, 0, false);
		break;
		
	case "lectureRightButton" :
		audio_play_sound(sbTeacherResponse2Hearing, 0, 0);
		audio_sound_gain(sbTeacherResponse2Hearing, 1, 0);
		global.activeNextButton = true;
		break; 
		
	
	//Going Home Scene
	case "Option1GoingHome" :
		global.activeNextButton = true;
		break;
		
	case "Option2GoingHome" :
		global.activeNextButton = true;
		break;
		
	case "Option3GoingHome" :
		global.activeNextButton = true;
		break;
		
	case "Option4GoingHome" :
		global.activeNextButton = true;
		break;
		
	
	
	//Conversation Scene
	case "convPositive": 
		audio_play_sound(sbNickResp1, 0, false);
		break;
		
	case "convNegative" : 
		audio_play_sound(sbNickResp2, 0, false);
		break;
		
	case "convNeutral" : 
		audio_play_sound(sbNickResp3, 0, false);
		break;
		
	case "convSarcastic" :
		audio_play_sound(sbNickResp4, 0, false);
		global.activeNextButton = true
		break;
	}
}