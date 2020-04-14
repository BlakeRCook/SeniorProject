/// @description Insert description here
// You can write your code in this editor
hp = 1;
flash = false;
hitNow = false;
hsp = 1;
vsp = 0;
detect_range = 200;
grv = 0.3;
sprint_speed = 0;
firingdelay = 0;

enum ENEMYSTATE //global variables, and constant
//can establish enum anywhere
{
	IDLE,
	HIT,
	DEAD
}

state = ENEMYSTATE.IDLE;