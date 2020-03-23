/// @description move to next room

with (oPlayer)
{
	if (HasControl)
	{
		HasControl = false;
		SlideTransition(TRANS_MODE.GOTO, other.target, other.tX, other.tY);
		//room_goto(other.TargetRoom);
		//oPlayer.x = other.TargetX;
		//oPlayer.y = other.TargetY;
		//HasControl = true;
	}
}