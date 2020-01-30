
EnsurePhysics_Player();
bounced = false;
//Animations
//attack animations

if (!place_meeting(x,y+1,oWall)) //dont really want to repeat code being carless for clarity
{
	//in_air = true; ///
	//no collision one pixle below us
	sprite_index = sAirStick; //sPlayerAir
	image_speed = 0; //how fast the animation happens. this is for jumping so dont animate
	//this is a multipler on sprite. speed is in the sprite editor
	image_index = 0;
} else //we are touching the floor
{
	//in_air = false; ///
	image_speed = 1; //normal speed
	if (hsp == 0){
		sprite_index = sPlayerStick; //sPlayer
		
	} 
	else {
		sprite_index = sStickRun; //sPlayerRunning
		
	}
}
image_speed = 1;
if (hsp != 0)  && (in_air == false) image_xscale  = sign(hsp); //determins a horizontal scale of sprite. percentage or multipler
// 1 is 100%
// -1 is other direction

//ATTACKS 
if (key_attack_forward) && ( in_air == true) && (image_xscale > 0) state = PLAYERSTATE.FORWARDAIR;
if (key_attack_back) && ( in_air == true) && (image_xscale < 0) state = PLAYERSTATE.FORWARDAIR;

if (key_attack_back) && ( in_air == true) && (image_xscale > 0) state = PLAYERSTATE.BACKAIR;
if (key_attack_forward) && ( in_air == true) && (image_xscale < 0) state = PLAYERSTATE.BACKAIR;

if (key_attack_down) && ( in_air == true) state = PLAYERSTATE.DOWNAIR;
if (key_attack_up) && ( in_air == true) state = PLAYERSTATE.UPAIR;


if (key_attack_forward) && (in_air == false) && (image_xscale > 0) state = PLAYERSTATE.ATTACK_1;
if (key_attack_back) && ( in_air == false) && (image_xscale < 0) state = PLAYERSTATE.ATTACK_1;

if (key_attack_back) && ( in_air == false) && (image_xscale > 0) {
	image_xscale = image_xscale * -1;
	state = PLAYERSTATE.ATTACK_1;
}

if (key_attack_forward) && ( in_air == false) && (image_xscale < 0) {
	image_xscale = image_xscale * -1;
	state = PLAYERSTATE.ATTACK_1;
}

if (Key_roll) && (in_air == false){
	state = PLAYERSTATE.ROLL;
}

if (Key_parry){
	state = PLAYERSTATE.PARRY;	
}
