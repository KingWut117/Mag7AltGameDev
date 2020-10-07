/// @description Insert description here
// You can write your code in this editor

curFrame = 1;

if(disabled)
	return;

// TODO: perform button action
switch(action) {
	case 1:
		room_goto(rmGame);
		break;
	case 2:
		room_goto(Room1);
		break;
	case 3:
		var button = instance_find(objButton, button_index);
		button.disabled = !button.disabled;
		break;
}