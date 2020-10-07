// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawNineSlice(sprite, frame, x1, y1, x2, y2) {
	var spriteWidth = sprite_get_width(sprite);
	var spriteHeight = sprite_get_height(sprite);

	var sliceWidth = spriteWidth / 3;
	var sliceHeight = spriteHeight / 3;

	var width = x2 - x1;
	var height = y2 - y1;

	// corners
	draw_sprite_part(sprite, frame, 0, 0, sliceWidth, sliceHeight, x1, y1);
	draw_sprite_part(sprite, frame, 2*sliceWidth, 0, sliceWidth, sliceHeight, x2-sliceWidth, y1);
	draw_sprite_part(sprite, frame, 0, 2*sliceHeight, sliceWidth, sliceHeight, x1, y2-sliceHeight);
	draw_sprite_part(sprite, frame, 2*sliceWidth, 2*sliceHeight, sliceWidth, sliceHeight, x2-sliceWidth, y2-sliceHeight);

	// edges
	var midWidth = width - 2*sliceWidth;
	var xScale = midWidth / sliceWidth;
	var midHeight = height - 2*sliceHeight;
	var yScale = midHeight / sliceHeight;
	draw_sprite_part_ext(sprite, frame, sliceWidth, 0, sliceWidth, sliceHeight, x1+sliceWidth, y1, xScale, 1, c_white, 1);
	draw_sprite_part_ext(sprite, frame, sliceWidth, 2*sliceHeight, sliceWidth, sliceHeight, x1+sliceWidth, y2-sliceHeight, xScale, 1, c_white, 1);
	draw_sprite_part_ext(sprite, frame, 0, sliceHeight, sliceWidth, sliceHeight, x1, y1+sliceHeight, 1, yScale, c_white, 1);
	draw_sprite_part_ext(sprite, frame, 2*sliceWidth, sliceHeight, sliceWidth, sliceHeight, x2-sliceWidth, y1+sliceHeight, 1, yScale, c_white, 1);

	// middle
	draw_sprite_part_ext(sprite, frame, sliceWidth, sliceHeight, sliceWidth, sliceHeight, x1+sliceWidth, y1+sliceHeight, xScale, yScale, c_white, 1);
}