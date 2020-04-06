with (instance_create_layer(640,990,"Walls",oWall)) 
		{
			ds_list_add(oBoss.list, id);
		}
		
var i;
var xx;
for (i = 0; i < 4; i ++){
	if(i == 0){
		xx = 768;	
	}
	if(i == 1){
		xx = 800;	
	}
	if(i == 2){
		xx = 960;
	}
	if(i == 3){
		xx = 992;
	}
	with (instance_create_layer(xx,990,"Walls",oWall)) 
		{
			ds_list_add(oBoss.list, id);
		}
	
}
		
//single plat
// x = 640 , y = 832

//next double
// x = 768; y = 736;
// x = 800; y = 736;

//next double
//x = 960; y = 736;
//x = 992; y = 736;

//990 bottom screen