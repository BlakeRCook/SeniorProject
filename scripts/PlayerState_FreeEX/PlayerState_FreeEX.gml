
//EnsurePhysics_Player();
bounced = false;
noCollision = false;
image_speed = 1;
//not sure yet

if(!place_meeting(x, y+vsp+5, oWall)){ //if not colliding then we in the air
	sprite_index = sAirStick;
	mask_index = sAirStick;

} else { // we collided verticaly
	//walking animation
	if (hsp == 0){ 
		sprite_index = sPlayerStick; //sPlayer
		mask_index = sPlayerStick;
	} 
	else {
		sprite_index = sStickRun; //sPlayerRunning
		mask_index = sStickRun;
	}
}



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
