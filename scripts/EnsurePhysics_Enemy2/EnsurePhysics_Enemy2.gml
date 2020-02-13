

//Horizontal Collision
// before me commit to movment we need to predict
if (place_meeting(x+hsp, y, oWall)) //again returns 0 or 1
{
	while (!place_meeting(x+sign(hsp),y,oWall)) //sign() returns or 1 or -1 depending if positive or negitive
	// as long as their is no collision 1 pixle of movment away *do action*
	{
		x = x + sign(hsp);
	}
	//hsp = 0; //no movment because its a collision.
	hsp *= -1;
}

x = x + hsp;//built in property of object //sprite index // this is x coordinate in game room

//Vertical Collision
if (place_meeting(x, y+vsp, oWall)) //again returns 0 or 1
{
	while (!place_meeting(x,y+sign(vsp),oWall)) 
	{
		y = y + sign(vsp);
	}
	
	vsp = 0; //no movment because its a collision.
	
}
if ( y > hover_rangeD){
	vsp *= -1;
}
if ( y < hover_rangeU){
	vsp *= -1;
}

y = y + vsp
