hsp = 0; // Horizontal speed
//vsp = 0;

processAttack(sAttack3, sAttack3HB);


if (animation_end())
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
//EnsurePhysics_Player();