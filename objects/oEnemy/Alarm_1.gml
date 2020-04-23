/// @description Insert description here
// You can write your code in this editor

// this will only take place once when the alarm fires 
if (image_alpha = 1) { //by default it is 1. transparency

	image_alpha = 0.3
} else {
	image_alpha = 1.0;
}

if (flash == true ) {
	alarm[1] = 8; //fire again in 8 steps
} else {
	image_alpha = 1;
}