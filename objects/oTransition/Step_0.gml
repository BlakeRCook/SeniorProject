/// Progress the transition

if (mode != TRANS_MODE.OFF){
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent-max((percent/10), 0.005)); //reduces percent by 10 % each time
	}
	else 
	{
		percent = min(1, percent + max(((1 - percent)/10), 0.005));
	}
	
	if(percent == 1) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				//always make sure their is a next room or crash
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target); // go to sepecific room
				oPlayer.x = tX;
				oPlayer.y = tY;
				oPlayer.HasControl = true;
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart(); // resarts the game.
				break;
			}
			
		}
	}
}
