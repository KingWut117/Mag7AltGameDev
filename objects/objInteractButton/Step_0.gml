/// @description Insert description here
// You can write your code in this editor
//var textCounter = global.convCounter;

//switch(buttonName){
//	case "convPositive" :
//		switch(textCounter){
//			case 0 :
//				if(rng == 1)
//					text = global.DIALOG.Conv1Positive1;
//				else
//					text = global.DIALOG.Conv1Positive2;
//				break;
//			case 1 :
//				if(rng == 1)
//					text = global.DIALOG.Conv2Positive1;
//				else
//					text = global.DIALOG.Conv2Positive2;
//				break;
//			case 2 : instance_deactivate_object(objInteractButton); break;
//			}
//		break;
//	case "convNegative" :
//		switch(textCounter){
//			case 0 :
//				if(rng == 1)
//					text = global.DIALOG.Conv1Negative1;
//				else
//					text = global.DIALOG.Conv1Negative2;
//				break;
//			case 1 :
//				if(rng == 1)
//					text = global.DIALOG.Conv2Negative1;
//				else
//					text = global.DIALOG.Conv2Negative2;
//				break;
//			case 2 : instance_deactivate_object(objInteractButton); break;
//			}
//		break;
//	case "convNeutral" :
//		switch(textCounter){
//			case 0 :
//				if(rng == 1)
//					text = global.DIALOG.Conv1Neutral1;
//				else
//					text = global.DIALOG.Conv1Neutral2;
//				break;
//			case 1 :
//				if(rng == 1)
//					text = global.DIALOG.Conv2Neutral1;
//				else
//					text = global.DIALOG.Conv2Neutral2;
//				break;
//			case 2 : instance_deactivate_object(objInteractButton); break;
//			}
//		break;
//	case "convSarcastic" :
//		switch(textCounter){
//			case 0 :
//				if(rng == 1)
//					text = global.DIALOG.Conv1Sarcastic1;
//				else
//					text = global.DIALOG.Conv1Sarcastic2;
//				break;
//			case 1 :
//				if(rng == 1)
//					text = global.DIALOG.Conv2Sarcastic1;
//				else
//					text = global.DIALOG.Conv2Sarcastic2;
//				break;
//			case 2 : instance_deactivate_object(objInteractButton); break;
//			}
//		break;
//}

var width = sprite_width;

var sprWidth = sprite_get_width(sprite_index);
var sprHeight = sprite_get_height(sprite_index);
var margin = 4;
var innerWidth = width - (2 * margin) - (2 * sprWidth/3);
var lineHeight = 20;
var innerHeight = string_height_ext(text, lineHeight, innerWidth);
var height = innerHeight + 2*margin + (2*sprHeight/3);

image_yscale = height / sprHeight;
