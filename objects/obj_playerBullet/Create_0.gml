/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 








direction = point_direction(obj_player.x ,obj_player.y , mouse_x , mouse_y );
direction = direction + random_range(-4,4);
speed = 6 ;
image_angle = direction;
circle_x=x;
circle_y=y;
timer_effect=room_speed*0.1;

var effect=instance_create_layer(x+4,y,"Effects",obj_effect);
effect.image_angle=direction;