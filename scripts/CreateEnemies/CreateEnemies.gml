randomize();
var i;
var ry;
var rx;
var spd;
var coin;
for(i = 0; i < 10; i ++){
	ry = random_range(570,860);
	rx = random_range(1100,1165);
	spd = random_range(.1,1);
	coin = random_range(1,3);
	with (instance_create_layer(rx,ry,"Enemys",oEnemy)) 
		{
			//do somthing
			if (coin >= 2 ){
				direction = 180	
			} else {
				direction = 0;	
			}
			//direction = 180;
			speed = spd;
			hsp = -1;
		}
}

var xx;
var yy;
xx = 1215;
yy = 736;
for (i = 0; i < 3; i++){
	with (instance_create_layer(xx,yy,"Enemys",oEnemy2)) 
		{
			//do something
			hp = 20;
			detect_range = 0;
			direction = 180;
			ds_list_add(oBoss.list, id);
		}
	//xx += 96;
	yy -= 96;
}

//y range 860 - 570

//yellow eneimes POS y&x is 96 apart
// x = 928 , y = 736
// x = 1024 , y = 640
// x = 1120 , y = 544