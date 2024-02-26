/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



//play hit animation when get shoot
if(isHit&&current_state!=state.dead){
	if(timer_hurt>0){timer_hurt--;}
	else{
		hitCount++;
		timer_hurt=room_speed*0.1;
	}
		
	if(hitCount==0){
		sprite_index=spr_enemy_hit1;
	}else if(hitCount==1){
		sprite_index=spr_enemy_hit2;
	}
	else if(hitCount==2){
		sprite_index=spr_enemy_idle;
		isHit=false;
		hitCount=0;
		timer_hurt=room_speed*0.1;
		}

		}	
//enemy bounce back when get hit
if(isFly){
	if(timer_fly>=0){timer_fly--;}
	else{
		timer_fly=room_speed*0.8;
		isFly=false;
	}

		}	
//enmey plays dead animation
if(isDying){
	timer_dying--;
	if(timer_dying<room_speed*0.5 &&timer_dying>=room_speed*0.4){
	sprite_index=spr_enemy_dying1;
	}else if(timer_dying<room_speed*0.4&&timer_dying>=room_speed*0.3){
	sprite_index=spr_enemy_dead;
	}else if(timer_dying<room_speed*0.3&&timer_dying>=0){
	image_blend=c_grey;	
	}
	else if(timer_dying<0){
	current_state=state.dead;
	isDying=false;
	}

}


