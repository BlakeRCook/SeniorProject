/// draw black bars
//gui draws on the screen not the room
if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}

if (BossKilled == true){
	draw_set_color(c_black);
	//draw_text(500,200,"Boss Killed");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_transformed(w / 2, h / 2, "Boss Defeated!", 2, 2, image_angle);
	if (t == 0){
		alarm[0] = 300;
		t += 1;
	}

}

draw_text(50,50,"HP: " + string(oPlayer.hp));