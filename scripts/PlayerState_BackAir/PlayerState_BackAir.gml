hsp = 0; // Horizontal speed
//vsp = 0;

image_speed = 1;
processAttack(sBackAir, sBackAirHB);


if (animation_end())
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
/////////////////////////////////////////
EnsurePhysics_Player();
