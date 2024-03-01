/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if(blackBarExist){
	timer_showText--;
	if(timer_showText<0){
draw_set_font(font_end);
draw_set_color(c_red);
draw_text(obj_player.x-50+0.2*(mouse_x-obj_player.x),obj_player.y+80+0.2*(mouse_y-obj_player.y),"You died.");
	}
}




