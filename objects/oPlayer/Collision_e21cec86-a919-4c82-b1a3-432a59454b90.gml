 /// @description Insert description here
// You can write your code in this editor
if (invincible == false ){
	
	with other {
		instance_destroy();
	}
}

//some action
if(state != PLAYERSTATE.ROLL){
	invincible = true;
	alarm[0] = 60; //runs at some rate set then activates alarm
	alarm[1] = 1; //happens right away
}
//invincible = true;
//alarm[0] = 60; //runs at some rate set then activates alarm
//alarm[1] = 1; //happens right away