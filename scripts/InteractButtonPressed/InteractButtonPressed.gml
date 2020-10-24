// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InteractButtonPressed(buttonName){

	switch(buttonName)
	{
	case "lectureWrongButton1" : lectureDialog.text = "That is not what I said. Try again."; break;
	case "lectureWrongButton2" : lectureDialog.text = "That is not what I said. Try again."; break;
	case "lectureWrongButton3" : lectureDialog.text = "That is not what I said. Try again."; break;
	case "lectureRightButton" : lectureDialog.text = "Good, I am glad you are paying attention."; global.activeNextButton = true; break;
	
	default : lectureDialog.text = "Test Failed."; end;

}