// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NoteMover(noteDir, sprite){
	noteLeft.depth = 1;
	noteRight.depth = 1;
	noteBottom.depth = 1;
	if (noteDir == "left") {
		noteLeft.x = -576;
		noteLeft.depth = 0;
		switch (sprite) {
			case 1 :
				noteLeft.sprite_index = I_Deaf_Note_1;
				break;
				
			case 5 :
				noteLeft.sprite_index = I_Deaf_Note_2;
				break;
				
			case 7 :
				noteLeft.sprite_index = I_Deaf_Note_3;
				break;
				
			case 11 :
				noteLeft.sprite_index = I_Deaf_Note_4;
				break;
				
			case 14 :
				noteLeft.sprite_index = I_Deaf_Note_5;
				break;
				
			case 16 :
				noteLeft.sprite_index = I_Deaf_Note_6;
				instance_deactivate_object(objInteractButton);
				break;
		}
		
		with (noteLeft) {
			move_towards_point(288, 192, 10);
		}
	}
	
	if (noteDir == "right") {
		noteRight.x = 1248;
		noteRight.depth = 0;
		switch (sprite) {
			case 2 :
				noteRight.sprite_index = I_Hearing_Note_1;
				break;
				
			case 3 :
				noteRight.sprite_index = I_Hearing_Note_2;
				break;
				
			case 6 :
				noteRight.sprite_index = I_Hearing_Note_3;
				break;
				
			case 9 :
				noteRight.sprite_index = I_Hearing_Note_4;
				break;
				
			case 13 :
				noteRight.sprite_index = I_Hearing_Note_5;
				break;
		}
		
		with (noteRight) {
			move_towards_point(288, 192, 10);
		}
	}
	
	if (noteDir == "bottom") {
		noteBottom.y = 704;
		noteBottom.depth = 0;
		switch (sprite) {
			case 4 :
				noteBottom.sprite_index = I_Implant_Note_1;
				break;
				
			case 8 :
				noteBottom.sprite_index = I_Implant_Note_2;
				break;
				
			case 10 :
				noteBottom.sprite_index = I_Implant_Note_3;
				break;
				
			case 12 :
				noteBottom.sprite_index = I_Implant_Note_4;
				break;
				
			case 15 :
				noteBottom.sprite_index = I_Implant_Note_5;
				break;
		}
		
		with (noteBottom) {
			move_towards_point(288, 192, 10);
		}
	}
}