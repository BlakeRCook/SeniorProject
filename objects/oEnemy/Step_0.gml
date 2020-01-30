 /// @description Insert description here
// You can write your code in this editor


if (state == ENEMYSTATE.HIT){
	sprite_index = sEnemyHit;
	image_index = 0;
}

if (state == ENEMYSTATE.IDLE){
	sprite_index = sEnemy;
	image_index = 0;
	
	firingdelay = firingdelay - 1;
	if (firingdelay < 0){
	firingdelay = 80;
	with (instance_create_layer(x,y,"bullets",oBullet)) 
	//give an object applies to that object instead
	//this creates another instance of an object
	{
		speed = 10; //constant speed stays this speed till the end
		direction = 0; //other is refering to original object
		//random_range(-3, 3);
		
	}
}
	
}

if (state == ENEMYSTATE.DEAD) {
	instance_destroy();
}