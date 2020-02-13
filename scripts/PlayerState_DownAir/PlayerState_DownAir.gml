hsp = 0; // Horizontal speed
//vsp = 0;
noCollision = true;
image_speed = 1;

processAttack(sDownAir, sDownAirHB);



if (animation_end()) && (bounced == false)
{
	sprite_index = sPlayerStick;
	mask_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
	noCollision = false;
}
/////////////////////////////////////////
//EnsurePhysics_Player();
