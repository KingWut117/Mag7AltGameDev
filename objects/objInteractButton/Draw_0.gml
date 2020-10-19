/// @description Insert description here
// You can write your code in this editor

var width = sprite_width;

var sprWidth = sprite_get_width(sprite_index);
var sprHeight = sprite_get_height(sprite_index);
var margin = 8;
var innerWidth = width - (2 * margin) - (2 * sprWidth/3);
var lineHeight = 40;
var innerHeight = string_height_ext(text, lineHeight, innerWidth);
var height = innerHeight + 2*margin + (2*sprHeight/3);

var frame = curFrame;
if(disabled)
	frame = 3;

DrawNineSlice(sprite_index, frame, x, y, x+width, y+height);

draw_set_color(fontColor);
draw_set_font(fntDialogBubble);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext(x + width/2, y+height/2, text, lineHeight, innerWidth);