
playerDirection = point_direction(obj_player.x ,obj_player.y , mouse_x , mouse_y );
var _keep_x=x;
var _keep_y=y;
if(useGun){
var keepGun_x=myGun.x;
var keepGun_y=myGun.y;
}
var keepCamera_x=obj_camera.x;
var keepCamera_y=obj_camera.y;
if(isAlive){
/*
depth=-y;
myGun.depth=depth-1;*/
if(keyboard_check(ord("W"))){
y-=3;
myGun.y-=3;
obj_camera.y-=3;

}
 if(keyboard_check(ord("S"))){
y+=3;
myGun.y+=3;
obj_camera.y+=3;

}
if(keyboard_check(ord("A"))){
x-=3;
myGun.x-=3;
obj_camera.x-=3;
image_xscale=-1;

}
if(keyboard_check(ord("D"))){
myGun.x+=3;
x+=3;
obj_camera.x+=3;
image_xscale=1;
}

}



if(isShooting&&isAlive){
if(timer_shooting>0){timer_shooting--;}
else{
	obj_camera.shakeScreen=true;
	var bullet=instance_create_layer(x,y,"Instances",obj_playerBullet);
	bullet.image_xscale=1.5;
	bullet.image_yscale=1.5;
	audio_play_sound(player_shoot,0,false);
	timer_shooting=room_speed*0.15;
}


}

if(useGun){
	myGun.image_angle=playerDirection;
	if(playerDirection>90 &&playerDirection<270){
		myGun.image_yscale=-1;
	}else{myGun.image_yscale=1;}
}
if(place_meeting(x,y,obj_wall)){
	if(!place_meeting(_keep_x,_keep_y,obj_wall)){
	x=_keep_x;
	y=_keep_y;
	myGun.x=keepGun_x;
	myGun.y=keepGun_y;
	obj_camera.x=keepCamera_x;
	obj_camera.y=keepCamera_y;
	}
}

if(place_meeting(x,y,obj_airWall)){
	if(!place_meeting(_keep_x,_keep_y,obj_airWall)){
	x=_keep_x;
	y=_keep_y;
	myGun.x=keepGun_x;
	myGun.y=keepGun_y;
	obj_camera.x=keepCamera_x;
	obj_camera.y=keepCamera_y;
	}
}

if(HP<=0){
isAlive=false;
useGun=false;
instance_destroy(myGun);
layer_destroy_instances("Bullets");
}