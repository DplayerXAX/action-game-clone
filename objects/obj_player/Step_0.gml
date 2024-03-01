
playerDirection = point_direction(obj_player.x ,obj_player.y , mouse_x , mouse_y );
var _keep_x=x;
var _keep_y=y;

var keepCamera_x=obj_camera.x;
var keepCamera_y=obj_camera.y;
if(isAlive&&!isSleep){
if(keyboard_check(ord("W"))){

y-=3;
obj_camera.y-=3;

}
 if(keyboard_check(ord("S"))){
y+=3;
obj_camera.y+=3;

}
if(keyboard_check(ord("A"))){
x-=3;
obj_camera.x-=3;
image_xscale=-1;

}
if(keyboard_check(ord("D"))){
x+=3;
obj_camera.x+=3;
image_xscale=1;
}

}



if(isShooting&&isAlive&&!isSleep){
if(timer_shooting>0){timer_shooting--;}
else{
	obj_camera.shakeScreen=true;
	var bullet=instance_create_layer(x,y,"Instances",obj_playerBullet);
	bullet.image_xscale=1.5;
	bullet.image_yscale=1.5;
	audio_play_sound(player_shoot,0,false);
	var shell=instance_create_layer(x,y,"Instances",obj_shell);
	timer_shooting=room_speed*0.15;
}


}

if(useGun){
	myGun.image_angle=playerDirection;
	if(playerDirection>90 &&playerDirection<270){
		myGun.image_yscale=-1;
	}else{myGun.image_yscale=1;}
}

	if(isPush){
	timer_pushing--;
	speed=4;
	if(useGun){myGun.speed=4;}
	obj_camera.speed=4;
	if(timer_pushing<0){
	speed=0;
	if(useGun){myGun.speed=0;}
	obj_camera.speed=0;
	timer_pushing=room_speed*0.4;
	isPush=false;
	}
	
	}
	
if(place_meeting(x,y,obj_wall)){	
	speed=0;
	if(useGun){myGun.speed=0;}
	obj_camera.speed=0;

	if(!place_meeting(_keep_x,_keep_y,obj_wall)){
	x=_keep_x;
	y=_keep_y;
	obj_camera.x=keepCamera_x;
	obj_camera.y=keepCamera_y;
	}
}

if(place_meeting(x,y,obj_airWall)){
	speed=0;
	if(useGun){myGun.speed=0;}
	obj_camera.speed=0;
	if(!place_meeting(_keep_x,_keep_y,obj_airWall)){
	x=_keep_x;
	y=_keep_y;
	obj_camera.x=keepCamera_x;
	obj_camera.y=keepCamera_y;
	}
}

if(HP<=0&&isAlive){
isAlive=false;
useGun=false;
audio_stop_sound(background_music);
audio_play_sound(die_music,0,true);
instance_destroy(myGun);
layer_destroy_instances("Bullets");
}