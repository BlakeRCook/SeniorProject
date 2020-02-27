     // runs when the object is crated
//show_debug_message("message");
//debug_even("message")
hsp = 0; //horizontal speed
vsp = 0;  // Vertial speed
grv = 0.3; //Gravity (unquie built in variable)
walksp = 4; // walk speed
in_air = false;
invincible = false;
bounced = false;
noCollision = false;
jumphight = 0;



state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create(); //nead to clear this at some point
hitByParry = ds_list_create();

yset = sprite_yoffset;

enum PLAYERSTATE //global variables, and constant
//can establish enum anywhere
{
	FREE,
	ATTACK_1,
	ATTACK_2,
	ATTACK_3,
	FORWARDAIR,
	UPAIR,
	DOWNAIR,
	BACKAIR,
	ROLL,
	PARRY,
	HIT
}