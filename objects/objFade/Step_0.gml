/// @description Insert description here
// You can write your code in this editor

//Enter State
if (state == 0) {
	timer++
	
	//change room
	if (timer >= duration) {
		
		
		//set state
		state = 1;
	}
}

//Exit State
else if (state == 1) {
	timer --;
	
	//destroy
	if (timer <= 0) {
		instance_destroy();
	}
}

//set alpha 
alpha = timer / duration;
