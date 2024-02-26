/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

enemyDirection = point_direction(x,y,obj_player.x ,obj_player.y);
var _keep_x=x;
var _keep_y=y;


//need to be deleted

if(hp<=0){
	instance_destroy(enemyGun);
	isDying=true;
	useGun=false;

}

if(useGun){
	enemyGun.image_angle=enemyDirection;
	var keepGun_x=enemyGun.x;
	var keepGun_y=enemyGun.y;
}

if(timer_enemyShooting>0){timer_enemyShooting--;}
else{
	if(!isDying&&current_state!=state.dead&&obj_player.isAlive){
	var bullet=instance_create_layer(x,y,"Bullets",obj_enemyBullet);
	bullet.image_xscale=1.5;
	bullet.image_yscale=1.5;
	audio_play_sound(enemy_shoot,0,false);
	timer_enemyShooting=room_speed*random_range(1.5,2.5);
	}
}

switch(current_state){

case state.moveShoot:

if(!decideDirection&&useGun){
walkDirection=point_direction(x,y,irandom(1366),irandom(768));
decideDirection=true;
direction=walkDirection;
speed=1;
enemyGun.direction=walkDirection;
enemyGun.speed=1;
}

sprite_index=spr_enemy_walk;

timer_walk--;
if(shutDown){
timer_shutDown--;
if(timer_shutDown<0){
timer_shutDown=0.5;
shutDown=false;
}

}

if(timer_walk<0){
	current_state=state.Sleep;
	timer_walk=room_speed*(irandom(5)+2)*0.5;
	decideDirection=false;
	}
break;

case state.Sleep:
if(!isFly){
	speed=0;
	if(useGun){
		enemyGun.speed=0;
	}
	timer_sleep--;
	sprite_index=spr_enemy_idle;
}

if(timer_sleep<0){
current_state=state.moveShoot;
timer_sleep=room_speed*0.5;
}
break;

case state.dead:
show_debug_message("I die!");
sprite_index=spr_enemy_dead;
speed=0;
break;
}


if(enemyDirection>90 &&enemyDirection<270&&useGun){
	enemyGun.image_yscale=-1;
}else if(useGun){enemyGun.image_yscale=1;}
