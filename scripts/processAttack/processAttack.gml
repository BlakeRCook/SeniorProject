//start of the attack
image_speed = 1;
if (sprite_index != argument0) //sAttack1
{
	sprite_index = argument0;
	image_index = 0;
	
	ds_list_clear(hitByAttack);
}

//Use attaack hitbox & check for hits
mask_index = argument1; //sAttack1HB
var hitByAttackNow = ds_list_create(); //create a list of things we hit this frame
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
hits += instance_place_list(x,y,oEnemy2,hitByAttackNow,false);
hits += instance_place_list(x,y,oEnemy3,hitByAttackNow,false);
//if true will return ID from closest to furthest
//just counts what it hits "hits"
if (hits > 0)
{
	for (var i = 0 ; i < hits; i ++){
		//if this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i]; //short hand to look into the ds_list
		if (ds_list_find_index(hitByAttack, hitID) == -1 )
		//checks to see if we already hit it. if not we get -1
		{
			if (bounced == false){
				ds_list_add(hitByAttack, hitID);
			}
			//ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				//enemy hit
				EnemyHit(1);
			}
			if (state == PLAYERSTATE.DOWNAIR){
				vsp = 0;
				vsp -= 8;
				bounced = true;
				
			}
			if (bounced == true){
				ds_list_clear(hitByAttack);
			}
		}
	}
}

//destroy the list this step
ds_list_destroy(hitByAttackNow);
mask_index = sPlayerStick; //sPlayerStick
