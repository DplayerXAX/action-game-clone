/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
obj_camera.shakeScreen=true;
var destroyEffect=instance_create_layer(x,y,"Effects",obj_effect);
destroyEffect.image_angle=direction;


with(other){
isHit=true;
isSleep=true;
isPush=true;
HP-=1;
}
other.direction=direction;
if(other.useGun){other.myGun.direction=direction;}
obj_camera.direction=direction;
instance_destroy();

