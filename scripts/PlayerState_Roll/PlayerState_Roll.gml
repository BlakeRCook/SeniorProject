
image_speed = 1;
sprite_index = sRoll;
var roll_distance = 5; //5
invincible = true

//Horizontal Collision
// before me commit to movment we need to predict
if (place_meeting(x+roll_distance, y, oWall))  //Right collision
{
	while (!place_meeting(x+sign(roll_distance),y,oWall)) 
	
	{
		x = x + sign(roll_distance);
	}
	
	roll_distance = 0; 
}

if (place_meeting(x-roll_distance, y, oWall)) //left collision
{
	while (!place_meeting(x-sign(roll_distance),y,oWall)) 
	
	{
		x = x - sign(roll_distance);
	}
	
	roll_distance = 0; //no movment because its a collision.
}

if (image_xscale > 0){
	
	x = x + roll_distance;
} else {
	x = x - roll_distance;
}




if (animation_end())
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
	invincible = false;
}
/////////////////////////////////////////
//EnsurePhysics_Player();