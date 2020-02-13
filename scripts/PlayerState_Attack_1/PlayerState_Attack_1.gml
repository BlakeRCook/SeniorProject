hsp = 0; // Horizontal speed
//vsp = 0;

image_speed = 1;
processAttack(sAttack1, sAttack1HB);

//Trigger combo chain
if (key_attack_forward) && (image_index > 15) && (image_xscale > 0){
		state = PLAYERSTATE.ATTACK_2;
}
if (key_attack_back) && (image_index > 15) && (image_xscale < 0){
		state = PLAYERSTATE.ATTACK_2;
}

if (animation_end())
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
/////////////////////////////////////////
//EnsurePhysics_Player();
