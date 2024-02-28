/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(other.current_state!=state.dead&&other.useGun&&!(other.isDying)){
var destroyEffect=instance_create_layer(x,y,"Effects",obj_effect);
destroyEffect.image_angle=direction;
with(other){
	speed=4;
	enemyGun.speed=4;
	current_state=state.Sleep;
	timer_walk=room_speed*(irandom(5)+2)*0.5;
	decideDirection=false;
	hp-=1;
	isHit=true;
	isFly=true;
	if(hp==0){
	isDying=true;
	}
}
other.direction=direction;
other.enemyGun.direction=direction;



instance_destroy();
}