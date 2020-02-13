 /// @description Insert description here
// You can write your code in this editor
EnsurePhysics_Enemy();

if (state == ENEMYSTATE.HIT){
	//sprite_index = sEnemy2Hit;
	alarm[1] = 1; //happens right away
	//image_index = 0;
}

if (state == ENEMYSTATE.IDLE){
	sprite_index = sEnemy3;
	image_index = 0;
	flash = false;
	
}

if (state == ENEMYSTATE.DEAD) {
	instance_destroy();
}

if (collision_rectangle(x+detect_range, y+detect_range, x-detect_range, y-detect_range,oPlayer,false,false))
{
	if (x > oPlayer.x) && (hsp > 0){
		image_xscale = image_xscale * -1;
		//hsp += 1;
		hsp *= -1;
		//sprint_speed = -2;
	}
	if (x < oPlayer.x) && (hsp < 0){
		image_xscale = image_xscale * -1;
		//hsp -= 1;
		hsp *= -1;
		//sprint_speed = 2;
	}
	if (y-80 > oPlayer.y){
		vsp += -1;
	}
	if (hsp > 0){
		sprint_speed = 2;
	} else {
		sprint_speed = -2;
	}
	
}
//vsp = 0;