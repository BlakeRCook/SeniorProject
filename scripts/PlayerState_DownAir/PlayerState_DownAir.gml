hsp = 0; // Horizontal speed
//vsp = 0;

image_speed = 1;

processAttack(sDownAir, sDownAirHB);



if (animation_end()) && (bounced == false)
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
/////////////////////////////////////////
EnsurePhysics_Player();
