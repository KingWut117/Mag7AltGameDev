/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) = "Menu"){	
	for(var i = 0; i < array_length(options); i++) {
		var option = options[i];
		var button = instance_create_layer(40 + i * 300, room_height - 80, "Instances", objPlayButton);
		with (button)
		{
			action = option;
			text = option;
			image_xscale = 1;
		}
	}
}