  /// @description Insert description here
// You can write your code in this editor
EnsurePhysics_Enemy3();

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

if (collision_rectangle(x-detect_range, y-detect_range, x+detect_range, y+(detect_range/2),oPlayer,false,false))
{
	sprint_speed = sign(hsp) * 2;
	if (y-80 > oPlayer.y) && (jumpToken  == false){
		alarm[2] = 1;
		vsp = -8;
	}
	
	if ( x > oPlayer.x) && ( hsp == 1 ){
		hsp = -1;
	}
	
	if ( x < oPlayer.x) && ( hsp == -1 ){
		hsp = 1;
	}
	
} else {
	sprint_speed = 0;
}

//vsp = 0;