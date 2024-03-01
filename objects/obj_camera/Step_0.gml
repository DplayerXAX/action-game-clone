/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

x=obj_player.x-194;
y=obj_player.y-126;

if(x<0){
x=0
}else if(x>1366){
	x=1366;
}

if(y<0){
y=0;
}else if(y>768){
y=768;
}

var difference_x=mouse_x-obj_player.x;
var difference_y=mouse_y-obj_player.y;

camera_set_view_pos(view_camera[0],x+0.2*difference_x,y+0.2*difference_y);


if(shakeScreen){
	if(!decideRandom){
	var num=irandom(4)+1;
	}
	camera_set_view_pos(view_camera[0],x+0.2*difference_x+num,y+0.2*difference_y+num);
	timer_shakeScreen--;
	if(timer_shakeScreen<0){
	camera_set_view_pos(view_camera[0],x+0.2*difference_x,y+0.2*difference_y);
	show_debug_message("shaking!");
	timer_shakeScreen=room_speed*0.1;
	shakeScreen=false;
	decideRandom=false;
	}

}

if(blackBarExist){
	layer_sequence_x(endingSequence,x+0.2*difference_x);
	layer_sequence_y(endingSequence,y+0.2*difference_y);
	
}