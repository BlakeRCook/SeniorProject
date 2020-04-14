//Calculate Movement
var move = key_right - key_left; //var is temperary only lasts one frame
// 1 - 0 or 1-1 or 0-1 or 0-0. this will prevent moving in opposite directions.

hsp = move * walksp; // 1 or 0 * walk speed. in this case 4 pixles movement

vsp = vsp + grv + jumphight;


if(!place_meeting(x, y+vsp, oWall)){ //if not colliding then we in the air
	in_air = true;

} else { // we collided verticaly
	vsp = 0; //stop vertical movment
	speed = 0;
}

if(in_air == true && state!= PLAYERSTATE.ROLL) { //open legs before landing

	if(place_meeting(x+hsp,y+yset+vsp,oWall)) && (state != PLAYERSTATE.DOWNAIR){ //if i collide with a gap of about 50
		sprite_index = sPlayerStick;
		mask_index = sPlayerStick;
		in_air = false;
	
		if(state == PLAYERSTATE.FORWARDAIR) || 
		(state == PLAYERSTATE.DOWNAIR) || 
		(state == PLAYERSTATE.UPAIR) ||
		(state == PLAYERSTATE.BACKAIR){
			state = PLAYERSTATE.FREE;
		}
		
	}
}

y += vsp;

if(place_meeting(x+hsp+(sign(hsp)*10),y,oWall)){ //5
	//x -= sign(hsp);
	hsp = 0;
	speed = 0;
}
x += hsp;

if (place_meeting(x,y+1,oWall) && (key_jump) && (state != PLAYERSTATE.ATTACK_1))
{
	vsp = -8; //jump height
	
} // -y means up . +y means down
