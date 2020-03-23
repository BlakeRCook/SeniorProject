/// @desc SlideTransition(mode, targetRoom);
/// @arg Mode sets transition mode between next, restart, and goto
/// @arg Target sets target room when using the goto mode.
/// @arg x to warp too.
/// @arg y to warp too.

//using the @arg will let the IDE tell you what the function needs.

with(oTransition)
{
	mode = argument[0];
	if (argument_count > 1)
	{
		target = argument[1];	
		tX = argument[2];
		tY = argument[3];
	}
}
