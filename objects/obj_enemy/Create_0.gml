/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


hp=5;
isHit=false;
timer_hurt=room_speed*0.1;
isFly=false;
timer_fly=room_speed*0.8;
hitCount=0;
timer_hurt=room_speed*0.06;
useGun=true;
timer_enemyShooting=room_speed*random_range(1.5,2.5);
isDying=false;
timer_dying=room_speed*0.8;
var enemyDirection;
var walkDirection;
speed=0;
timer_walk=room_speed*(irandom(5)+2)*0.5;
timer_sleep=room_speed*0.5;
decideDirection=false;
shutDown=false;
timer_shutDown=room_speed*0.5;
enemyGun=instance_create_layer(x-2,y,"Guns",obj_gun);


enum state{
moveShoot,
Sleep,
dead
}

current_state=state.moveShoot;