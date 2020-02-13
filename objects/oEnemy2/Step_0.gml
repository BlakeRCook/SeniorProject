 /// @description Insert description here
// You can write your code in this editor
EnsurePhysics_Enemy2();

if (state == ENEMYSTATE.HIT){
	sprite_index = sEnemy2Hit;
	alarm[1] = 1; //happens right away
	image_index = 0;
}

if (state == ENEMYSTATE.IDLE){
	sprite_index = sEnemy2;
	image_index = 0;
	flash = false;
	
}

if (state == ENEMYSTATE.DEAD) {
	instance_destroy();
}

if (collision_rectangle(x+detect_range, y+detect_range, x-detect_range, y-detect_range,oPlayer,false,false))
{
	firingdelay = firingdelay - 1;
	if (firingdelay < 0){
	firingdelay = 100;
	with (instance_create_layer(x,y,"bullets",oBullet)) 
	//give an object applies to that object instead
//this creates another instance of an object
	{
		speed = 5; //constant speed stays this speed till the end
		var pDir = point_direction(x,y,oPlayer.x,oPlayer.y+10);
		direction = pDir; //other is refering to original object
		//random_range(-3, 3);
		
	}
}
	
}