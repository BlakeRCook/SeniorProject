//Size variables and mode setup

w = display_get_gui_width(); //gui is for menus, invisiable top layer
h = display_get_gui_height();

h_half = h * 0.5;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1; // 1 = completely black , 0 = is completly clear
target = room; // the room we are gunna be going to
tX = 0;
tY = 0;
//doDamage = false;
BossKilled = false;
t = 0;