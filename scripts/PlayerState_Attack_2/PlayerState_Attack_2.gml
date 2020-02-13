hsp = 0; // Horizontal speed
//vsp = 0;

processAttack(sAttack2, sAttack2HB);

//Trigger combo chain
if (key_attack_forward) && (image_index > 18) && (image_xscale > 0){
		state = PLAYERSTATE.ATTACK_3; //this is where you transfer to next attack
}
if (key_attack_back) && (image_index > 18) && (image_xscale < 0){
		state = PLAYERSTATE.ATTACK_3; //this is where you transfer to next attack
}

if (animation_end())
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
//EnsurePhysics_Player();