/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


HP=5;
isShooting=false;
isSleep=false;
isPush=false;
isAlive=true;
timer_shooting=room_speed*0.15;
timer_pushing=room_speed*0.4;
timer_hurt=room_speed*0.1;
timer_dying=room_speed*1;
var playerDirection;

myGun=instance_create_layer(x-2,y,"Guns",obj_gun);
useGun=true;
isHit=false;
hitCount=0;
backEffect=false;