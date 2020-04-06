image_speed = 1;
sprite_index = sParry;


ds_list_clear(hitByAttack);


//Use attaack hitbox & check for hits
mask_index = sParryHB; //sAttack1HB
var hitByParryNow = ds_list_create(); //create a list of things we hit this frame
var hits = instance_place_list(x,y,oBullet,hitByParryNow,false);
hits += instance_place_list(x,y,oBullet2,hitByParryNow,false); 
//if true will return ID from closest to furthest
//just counts what it hits "hits"
if (hits > 0)
{
	for (var i = 0 ; i < hits; i ++){
		//if this instance has not yet been hit by this attack
		var hitID = hitByParryNow[| i]; //short hand to look into the ds_list
		if (ds_list_find_index(hitByParry, hitID) == -1 )
		//checks to see if we already hit it. if not we get -1
		{
			ds_list_add(hitByParry, hitID);
			with (hitID)
			{
				speed = -10;
				was_parried = true;
			}
		}
	}
}

//destroy the list this step
ds_list_destroy(hitByParryNow);
mask_index = sPlayerStick;




if (animation_end())
{
	sprite_index = sPlayerStick;
	state = PLAYERSTATE.FREE;
}
/////////////////////////////////////////
//EnsurePhysics_Player();