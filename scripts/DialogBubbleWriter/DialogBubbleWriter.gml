// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogBubbleWriter(runType, roomName){
	if(runType = "Hearing"){
		if(roomName = "rmAlarmClock")
			return "Alarm Clock (hearing)";
		if(roomName = "rmBullies")
			return "Bullies (hearing)";
		if(roomName = "rmCarHonks")
			return "Car Honks (hearing)";
		if(roomName = "rmConversation")
			return "Conversation (hearing)";
		if(roomName = "rmDescribeHearing")
			return "Describe Run (hearing)";
		if(roomName = "rmLectureGame")
			return "Lecture Game (hearing)";
	}
	if(runType = "Implant"){
		if(roomName = "rmAlarmClock")
			return "Alarm Clock (implant)";
		if(roomName = "rmBullies")
			return "Bullies (implant)";
		if(roomName = "rmCarHonks")
			return "Car Honks (implant)";
		if(roomName = "rmConversation")
			return "Conversation (implant)";
		if(roomName = "rmDescribeHearing")
			return "Describe Run (implant)";
		if(roomName = "rmLectureGame")
			return "Lecture Game (implant)";
	}
	if(runType = "Deaf"){
		if(roomName = "rmAlarmClock")
			return "Alarm Clock (deaf)";
		if(roomName = "rmBullies")
			return "Bullies (deaf)";
		if(roomName = "rmCarHonks")
			return "Car Honks (deaf)";
		if(roomName = "rmConversation")
			return "Conversation (deaf)";
		if(roomName = "rmDescribeHearing")
			return "Describe Run (deaf)";
		if(roomName = "rmLectureGame")
			return "Lecture Game (deaf)";
	}
}