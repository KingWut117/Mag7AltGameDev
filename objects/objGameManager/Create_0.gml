/// @description Insert description here
// You can write your code in this editor

options = [
	[
		"These are the first set of options",
		[
			["Option 1", 1],
			["Option 2", 2],
			["Option 3", 4]
		]
	]
];

var curOption = options[0];
objDialogBubble.text = curOption[0];
var optionsList = curOption[1];
for(var i = 0; i < array_length(optionsList); i++) {
	var option = optionsList[i];
	var button = instance_create_layer(40 + i * 300, room_height - 80, "Instances", objPlayButton);
	button.action = option[1];
	button.text = option[0];
	button.image_xscale = 10;
}