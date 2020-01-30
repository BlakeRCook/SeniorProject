/// @description Insert description here
// You can write your code in this editor
hp = 5;
flash = false;
hitNow = false;

firingdelay = 0;

enum ENEMYSTATE //global variables, and constant
//can establish enum anywhere
{
	IDLE,
	HIT,
	DEAD
}

state = ENEMYSTATE.IDLE;