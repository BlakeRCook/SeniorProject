

vsp = vsp + grv ;

if(place_meeting(x,y+vsp+(sign(vsp)*2),oWall)){ //5
	//x -= sign(hsp);
	vsp = 0;
}


y += vsp;

if(place_meeting(x+hsp+(sign(hsp)*2),y,oWall)){ //5
	//x -= sign(hsp);
	hsp *= -1;
}
x = x + hsp + sprint_speed;

