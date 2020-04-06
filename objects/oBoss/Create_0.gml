
state = BOSSSTATE.NEUTRAL;
HP = 3;
vsp = 0.2;
hsp = 1;
flash = false;
hover_rangeD = y + 5;
hover_rangeU = y - 5;

shake_rangeF = x + 5;
shake_rangeB = x - 5;

firingdelay = 0;

gate = false;
ogX = x;
ogY = y;
t = 0;


list = ds_list_create();

enum BOSSSTATE //global variables, and constant
//can establish enum anywhere
{
	NEUTRAL,
	Pattern1,
	Pattern2,
	Pattern3,
	Pattern4,
	Attack1,
	PHASE2,
	PHASE3,
	HIT,
	DEAD,
}