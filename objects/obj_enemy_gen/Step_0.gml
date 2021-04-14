if WAVE_START{
	if (start_timer == true) {
		timer = room_speed * 10;
		start_timer = false;
	}
	if (timer > 0) {
		timer--;
	}
	if gen_wave{
		gen_wave = false
	
		enemy_to_gen = 30
		gen_timer = 0
	}

	gen_timer -= 1*GAME_SPD
	if gen_timer<=0{
	
		if enemy_to_gen >0{ 
			if (timer == 0){
				enemy_ID = irandom_range(1,3);
			}else{
				enemy_ID = irandom_range(1,2)
			}
				
			if (enemy_ID == 1){
				instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
									gen_y + irandom_range(-gen_y_var,gen_y_var),
									100,obj_enemy_1)
			} else if (enemy_ID == 2){
				instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
									gen_y + irandom_range(-gen_y_var,gen_y_var),
									100,obj_enemy_2)
			} else if (enemy_ID == 3){
				instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
									gen_y + irandom_range(-gen_y_var,gen_y_var),
									100,obj_enemy_3)
			}
				
			enemy_to_gen -= 1
			gen_timer = time_btwn_gen
		}
	}
}

if keyboard_check_pressed(vk_space){
	if WAVE_START{
		WAVE_START = false
		instance_destroy(obj_debug_bullet)
		instance_destroy(obj_debug_enemy)
	}else{
		WAVE_START = true
		gen_wave = true	
		PLAYER_HP = PLAYER_HP_MAX
		obj_debug_tower.alarm[1]=1	// reloads ammo
	}
}