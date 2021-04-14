depth = -y


hp_disp = lerp(hp_disp,hp,0.05)
path_speed = mspd *GAME_SPD

if y > room_height{
	PLAYER_HP -= my_dmg
	effect_create_above(ef_ring,x,y,1,c_red)
	instance_destroy()

}

hp_draw_x = x - hp_draw_w/2
hp_draw_y = y + 32*my_scale

if hp < 1{
	effect_create_above(ef_explosion,x,y,floor(my_scale),c_red)
	
	PLAYER_GOLD += kill_val
	
	var my_path = path_index
	var my_pos = path_position
	with (instance_create_depth(x+20,y,100,obj_enemy_3_small)){
		path_start(my_path,mspd,path_action_continue,true)
		path_position = my_pos - .02
	}
	with (instance_create_depth(x-20,y,100,obj_enemy_3_small)){
		path_start(my_path,mspd,path_action_continue,true)
		path_position = my_pos + .02
	}
	instance_destroy()
}