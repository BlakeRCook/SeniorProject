/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam)/2; //half of the wiew width and hight
view_h_half = camera_get_view_height(cam)/2;

xTo = xstart;
yTo = ystart;

mountainLayer = layer_get_id("Mountain");
treeLayer = layer_get_id("Trees");