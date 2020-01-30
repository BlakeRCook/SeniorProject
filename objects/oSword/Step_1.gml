
// this happens before all the other steps event.
x = oPlayer.x;
y = oPlayer.y + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y);
firingdelay = firingdelay - 1; //how many frames to fire again
recoil = max(0, recoil - 1);
if (mouse_check_button(mb_left)) && (firingdelay < 0){
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x,y,"Swing",oSwing)) 
	//give an object applies to that object instead
	//this creates another instance of an object
	{
		speed = 25; //constant speed stays this speed till the end
		direction = other.image_angle; //other is refering to original object
		//random_range(-3, 3);
		image_angle = direction;
		
	}
}

x = x - lengthdir_x(recoil,image_angle); //trig func to move things dynamicaly at an angle
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270) //image angle of 0 is to the right
{
	image_yscale = -1; //flips sword
}
else
{
	image_yscale = 1;	
}