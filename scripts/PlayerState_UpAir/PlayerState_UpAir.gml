hsp = 0; // Horizontal speed
//vsp = 0;

image_speed = 1;
processAttack(sUpAir, sUpAirHB);


if (animation_end()) && (in_air == false)
{
	sprite_index = sPlayerStick;
	mask_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
if (animation_end()) && (in_air == true)
{
	sprite_index = sAirStick;
	mask_index = sAirStick;
	state = PLAYERSTATE.FREE;
}
/////////////////////////////////////////
//EnsurePhysics_Player();
