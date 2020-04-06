/// @description Insert description here
// You can write your code in this editor
randomize();
if (oPlayer.HasControl = true){
	var m = random_range(1,4);
	m = round(m);
	if (m == 1){
		state = BOSSSTATE.Pattern1;
	} else if (m == 2){
		state = BOSSSTATE.Pattern2;
	} else if (m == 3){
		state = BOSSSTATE.Pattern3;
	} else if (m == 4){
		state = BOSSSTATE.Pattern4;
	}
	
}
alarm[4] = 100;