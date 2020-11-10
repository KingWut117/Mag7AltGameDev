/// @description Insert description here
// You can write your code in this editor

delta = 500000;
run_complete = 0

if (running) {
	now = get_timer();
	if ((now - last_update_time) > delta) {
	
		last_update_time = get_timer();
	
		if (!is_array(frame_sequence)) {
			frame_sequence = objVisualizerController.getSequence();
		}
		next_frame = frame_sequence[current_sequence_index];
		current_sequence_index += 1;
		image_index = next_frame;
		if (current_sequence_index > array_length(frame_sequence)-1) {
			current_sequence_index = 0;
		run_complete = 1
		}
	}
}

if run_complete = 1
	running = false
