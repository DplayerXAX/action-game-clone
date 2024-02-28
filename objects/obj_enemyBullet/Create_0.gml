
direction = point_direction(x,y, obj_player.x ,obj_player.y);
/*direction = direction + random_range(-4,4);*/
speed = 2 ;
image_angle = direction;

var effect=instance_create_layer(x+4,y,"Effects",obj_effect);
effect.image_angle=direction;