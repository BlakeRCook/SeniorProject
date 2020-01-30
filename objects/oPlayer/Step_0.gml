// This happens every frame of the game //middle click function to look at manual
key_left = keyboard_check(ord("A")); //(checks to see what key is pressed) (boolean values of 1 or 0)
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space); //was some key pressed on this frame
key_attack_forward = keyboard_check_pressed(vk_right);
key_attack_down = keyboard_check_pressed(vk_down);
key_attack_back = keyboard_check_pressed(vk_left);
key_attack_up = keyboard_check_pressed(vk_up);
Key_roll = keyboard_check(vk_shift);
Key_parry = keyboard_check(ord("Q"));

//vsp = vsp + grv;

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_FREE(); break;
	case PLAYERSTATE.ATTACK_1: PlayerState_Attack_1(); break;
	case PLAYERSTATE.ATTACK_2: PlayerState_Attack_2(); break;
	case PLAYERSTATE.ATTACK_3: PlayerState_Attack_3(); break;
	case PLAYERSTATE.FORWARDAIR: PlayerState_ForwardAir(); break;
	case PLAYERSTATE.BACKAIR: PlayerState_BackAir(); break;
	case PLAYERSTATE.DOWNAIR: PlayerState_DownAir(); break;
	case PLAYERSTATE.UPAIR: PlayerState_UpAir(); break;
	case PLAYERSTATE.ROLL: PlayerState_Roll(); break;
	case PLAYERSTATE.PARRY: PlayerState_Parry(); break;
	case PLAYERSTATE.HIT: PlayerHit(); break;
}