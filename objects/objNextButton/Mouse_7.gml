/// @description Insert description here
// You can write your code in this edit = 1;
audio_stop_all();
objGameManager.implantBeeping = false;
if (room == rmTransToEnd) {
	room_goto(Menu);
}
else {
	room_goto_next();
}



//fade to next room
