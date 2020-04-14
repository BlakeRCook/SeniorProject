
image_speed = 1;
sprite_index = sRoll;
mask_index = sRoll;
var roll_distance = 5; //5
invincible = true
HasControl = false;
//Horizontal Collision
// before me commit to movment we need to predict
if(place_meeting(x+(roll_distance*sign(hsp)),y,oWall)){ //5
	//x -= sign(hsp);
	roll_distance = 0;
	speed = 0;
}
if (image_xscale > 0){
	
	x = x + roll_distance;
} else {
	x = x - roll_distance;
}



if (animation_end())
{
	sprite_index = sPlayerStick;
	mask_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
	invincible = false;
	HasControl = true;
}
/////////////////////////////////////////
//EnsurePhysics_Player();