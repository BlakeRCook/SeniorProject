  
//update destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//update camera position
x += (xTo - x) / 25; //(where we want to be) - (where we are) / 25 (for 1/25 the position. drag effect on camera)
y += (yTo - y) / 25;


x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);



//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half); //cameras x,y origin is the top left corner

if (layer_exists(mountainLayer)){
	layer_x(mountainLayer, x/2);
}

if (layer_exists(treeLayer)){
	layer_x(treeLayer, x/4);
}