/// @description Insert description here
// You can write your code in this editor
MovePlatforms();

if (state == BOSSSTATE.NEUTRAL){
	if ( y > hover_rangeD){
		vsp *= -1;
	}
	if ( y < hover_rangeU){
		vsp *= -1;
	}

	y = y + vsp
	
	if (t==0){
		alarm[4] = 1;
		//state = BOSSSTATE.Pattern1;
		t += 1;
	}

}

if (state == BOSSSTATE.Pattern1){
	firingdelay = firingdelay - 1;
	if (firingdelay < 0){
		firingdelay = 100;
		var i;
		var dif;
		dif = 0;
		for(i = 0; i < 7; i ++){
			with (instance_create_layer(x,y+dif,"bullets",oBullet2)) 
			{
				speed = 10; //constant speed stays this speed till the end
				direction = 180; //other is refering to original object
				dif += oBullet2.sprite_yoffset;
			}
		}
	}	
}

if (state == BOSSSTATE.Pattern2){
	firingdelay = firingdelay - 1;
	if (firingdelay < 0){
		firingdelay = 100;
		var i;
		var dif;
		dif = 0;
		for(i = 0; i < 7; i ++){
			with (instance_create_layer(x,y,"bullets",oBullet2)) 
			{
				speed = 10; //constant speed stays this speed till the end
				direction = 100 + dif; //other is refering to original object
				dif += 20;
			}
		}
	}	
}

if (state == BOSSSTATE.Pattern3){
	firingdelay = firingdelay - 1;
	if (firingdelay < 0){
		firingdelay = 100;
		var i;
		var dif;
		var sp = 0;
		dif = 0;
		var ydif;
		if (HP <= 2){
			randomize();
			ydif = random_range(y, y+170);
		} else {
			ydif = y+170;	
		}
		for(i = 0; i < 7; i ++){
			with (instance_create_layer(x-60+dif,ydif,"bullets",oBullet2)) 
			{
				wobble = true;
				vsp -= sp; 
				speed = 10; //constant speed stays this speed till the end
				direction = 180;
				dif += oBullet2.sprite_xoffset;
				sp += 0.4;
			}
		}
	}	
}

if (state == BOSSSTATE.Pattern4){
	firingdelay = firingdelay - 1;
	if (firingdelay < 0){
		firingdelay = 100;
		var i;
		var xdif;
		xdif = 0;
		var ydif;
		ydif = 0;
		
		var yst;
		if (HP <= 2){
			randomize();
			yst = random_range(y, y+170);
		} else {
			yst = y+170;	
		}
		for(i = 0; i < 7; i ++){
			with (instance_create_layer(x-xdif,yst+ydif,"bullets",oBullet2)) 
			{
				speed = 10; //constant speed stays this speed till the end
				direction = 180; //other is refering to original object
				ydif += oBullet2.sprite_yoffset - 10;
				if(i > 2){
					xdif -= oBullet2.sprite_yoffset - 10;
				} else {
					xdif += oBullet2.sprite_yoffset - 10;
				}
					
				
			}
		}
	}	
}

if (state == BOSSSTATE.HIT)
{
	flash = true;
	alarm[1] = 1; //does the flashing
	oPlayer.HasControl = false;
	oPlayer.invincible = true;
	//oPlayer.vsp -= 10;
	oPlayer.direction = 135; //180 150 
	//oPlayer.speed = 14; //10
	
	alarm[0] = 240; //gives player control 60
	alarm[2] = 30; //closes the flash
	alarm[3] = 60; //this opens the gate
	t = 0;
	
	if (HP == 3){
		
		oPlayer.speed = 14; //10
		HP -= 1;
		state = BOSSSTATE.PHASE2; //cut scene 1. slams ground
	} else if (HP == 2){
		
		oPlayer.speed = 14; //10
		HP -= 1;
		state = BOSSSTATE.PHASE3;
	} else if (HP == 1) { //dead
		
		oPlayer.speed = 12; //10
		state = BOSSSTATE.DEAD;	
	}

}

if (state == BOSSSTATE.DEAD){
	oPlayer.HasControl = true;
	ds_list_clear(list);
	ds_list_destroy(list);
	
	oTransition.BossKilled = true;
	var layerid = layer_get_id("Enemys");
	layer_destroy(layerid);
}

if (state == BOSSSTATE.PHASE2){ //cut scene
	
	if (gate == true){
		if(y > ogY - 100){ //lifts up
			y -= 1;	
		} else { //slams the ground
			y = ogY;
			x = ogX;
			CreatePlatforms();
			gate = false;
			state = BOSSSTATE.NEUTRAL;
			
		}
	} else {
		if ( x > shake_rangeF){
			hsp *= -1;
		}
		if ( x < shake_rangeB){
			hsp *= -1;
		}

		x = x + hsp;
	
		if ( y > hover_rangeD){
			vsp *= -1;
		}
		if ( y < hover_rangeU){
			vsp *= -1;
		}

		y = y + vsp;
	}
	
}

if (state == BOSSSTATE.PHASE3){
	if ( x > shake_rangeF){
			hsp *= -1;
		}
	if ( x < shake_rangeB){
			hsp *= -1;
		}

		x = x + hsp;
	
	if ( y > hover_rangeD){
			vsp *= -1;
		}
	if ( y < hover_rangeU){
			vsp *= -1;
		}

		y = y + vsp;
	if (gate == true){
		CreateEnemies();
		gate = false;
		state = BOSSSTATE.NEUTRAL;
	}
	//CreateEnemies();
	//state = BOSSSTATE.NEUTRAL;
}