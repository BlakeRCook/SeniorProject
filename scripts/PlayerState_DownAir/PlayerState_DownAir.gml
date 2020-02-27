hsp = 0; // Horizontal speed
//vsp = 0;
noCollision = true;
image_speed = 1;

processAttack(sDownAir, sDownAirHB);



if (animation_end()) && (bounced == false) && (in_air == false)
{
	sprite_index = sPlayerStick;
	mask_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
	noCollision = false;
}

if (animation_end()) && (bounced == false) && (in_air == true)
{
	sprite_index = sAirStick;
	mask_index = sAirStick;
	state = PLAYERSTATE.FREE;
	noCollision = false;
}
/////////////////////////////////////////
//EnsurePhysics_Player();
