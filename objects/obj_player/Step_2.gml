/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(isAlive){
if(keyboard_check(ord("W")) ||keyboard_check(ord("A"))||keyboard_check(ord("S"))||keyboard_check(ord("D"))){
	sprite_index=spr_player_walk;
	}else{
	sprite_index=spr_player_idle;
	}
}

if(isHit&isAlive){
	if(!backEffect){
	if(timer_hurt>0){timer_hurt--;}
	else{
		hitCount++;
		timer_hurt=room_speed*0.1;
	}
		
	if(hitCount==0){
		sprite_index=spr_player_hit1;
	}else if(hitCount==1){
		sprite_index=spr_player_hit2;
	}
	else if(hitCount==2){
		isHit=false;
		backEffect=!backEffect;
		hitCount=0;
		timer_hurt=room_speed*0.1;
		}
	}else{if(timer_hurt>0){timer_hurt--;}
	else{
		hitCount++;
		timer_hurt=room_speed*0.1;
	}
		
	if(hitCount==0){
		sprite_index=spr_player_hit2;
	}else if(hitCount==1){
		sprite_index=spr_player_hit1;
	}
	else if(hitCount==2){
		isHit=false;
		backEffect=!backEffect;
		hitCount=0;
		timer_hurt=room_speed*0.1;
		}
		}	
		
	}

if(!isAlive){
timer_dying--;
sprite_index=spr_player_dying;
if(timer_dying<0){
sprite_index=spr_player_dead;
}
}
