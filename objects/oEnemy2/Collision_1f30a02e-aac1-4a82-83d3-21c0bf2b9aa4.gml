/// @description Insert description here
// You can write your code in this editor
if (other.was_parried == true){
	state = ENEMYSTATE.HIT;
	alarm[1] = 1; //happens right away
	EnemyHit(1);
	with other {
		instance_destroy();
	}
}