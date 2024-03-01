/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


HP=3;
isShooting=false;
isSleep=false;
isPush=false;
isAlive=true;
timer_shooting=room_speed*0.15;
timer_pushing=room_speed*0.4;
timer_hurt=room_speed*0.1;
timer_dying=room_speed*1;
timer_sleeping=room_speed*0.2;
globalvar blackBarExist;
globalvar endingSequence;
blackBarExist=false;
var playerDirection;
isSleep=false;
myGun=instance_create_layer(x-2,y,"Guns",obj_gun);
myGun.iBelong="player";
shadow=instance_create_layer(x,y,"shadow",obj_shadow);
useGun=true;
isHit=false;
hitCount=0;
backEffect=false;

audio_play_sound(background_music,0,true);