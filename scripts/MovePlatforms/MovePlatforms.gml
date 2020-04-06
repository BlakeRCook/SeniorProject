
if (ds_list_size(oBoss.list) > 0 ){
	//var b0 = ds_list_find_value(oBoss.list, 0);
	//if(b0.y != 832){
		//b0.direction = 90;
		//b0.speed = 2;
	//} else {
		//b0.speed = 0;
	//}
	////
	var b1 = ds_list_find_value(oBoss.list, 1);
	var b2 = ds_list_find_value(oBoss.list, 2);
	var b3 = ds_list_find_value(oBoss.list, 3);
	var b4 = ds_list_find_value(oBoss.list, 4);
	
	if(b1.y != 832){ //736
		b1.direction = 90;
		b1.speed = 2;
		
		b2.direction = 90;
		b2.speed = 2;
		
		b3.direction = 90;
		b3.speed = 2;
		
		b4.direction = 90;
		b4.speed = 2;
		
	} else {
		b1.speed = 0;
		b2.speed = 0;
		b3.speed = 0;
		b4.speed = 0;
	}
}

if (ds_list_size(oBoss.list) >= 6 ){
	var b5 = ds_list_find_value(oBoss.list, 5);
	var b6 = ds_list_find_value(oBoss.list, 6);
	var b7 = ds_list_find_value(oBoss.list, 7);
	
	if(b5.x != 926){
		b5.speed = 1; 	
	} else {
		b5.speed = 0;	
	}
	
	if(b6.x != 1024){
		b6.speed = 1; 	
	} else {
		b6.speed = 0;	
	}
	
	if(b7.x != 1120){
		b7.speed = 1; 	
	} else {
		b7.speed = 0;	
	}
}

//single plat 0
// x = 640 , y = 832

//next double 1,2
// x = 768; y = 736;
// x = 800; y = 736;

//next double 3,4
//x = 960; y = 736;
//x = 992; y = 736;

//990 bottom screen

//yellow eneimes POS y&x is 96 apart
// x = 928 , y = 736
// x = 1024 , y = 640
// x = 1120 , y = 544