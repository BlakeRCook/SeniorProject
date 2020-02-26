//Calculate Movement
var move = key_right - key_left; //var is temperary only lasts one frame
// 1 - 0 or 1-1 or 0-1 or 0-0. this will prevent moving in opposite directions.

hsp = move * walksp; // 1 or 0 * walk speed. in this case 4 pixles movement

vsp = vsp + grv + jumphight;

//check if on the floor
if (place_meeting(x,y+1,oWall) && (key_jump) && (state != PLAYERSTATE.ATTACK_1))
{
	jumphight = -5; //jump height
	
} // -y means up . +y means down

//Horizontal Collision
// before me commit to movment we need to predict
if (place_meeting(x+hsp, y, oWall)) //again returns 0 or 1
{
	while (!place_meeting(x+(sign(hsp)*35),y,oWall)) //35
	//sign() returns or 1 or -1 depending if positive or negitive
	// as long as their is no collision 1 pixle of movment away *do action*
	{
		x = x + sign(hsp);
	}
	hsp = 0; //no movment because its a collision.
}

x = x + hsp;//built in property of object //sprite index // this is x coordinate in game room

//Vertical Collision
if (place_meeting(x, y+vsp, oWall)) //again returns 0 or 1
{
	while (!place_meeting(x,y+(sign(vsp)*35),oWall)) 
	{
		y = y + sign(vsp);
	}
	
	vsp = 0; //no movment because its a collision.
}

if (!place_meeting(x,y+1,oWall)) //dont really want to repeat code being carless for clarity
{
	in_air = true; ///
	jumphight = 0;
	
} else //we are touching the floor
{
	in_air = false; ///	
	if(state == PLAYERSTATE.FORWARDAIR) || 
	(state == PLAYERSTATE.DOWNAIR) || 
	(state == PLAYERSTATE.UPAIR) ||
	(state == PLAYERSTATE.BACKAIR){
		state = PLAYERSTATE.FREE;
	}
}

y = y + vsp; //-y means up . +y means down

