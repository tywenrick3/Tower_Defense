/// @description Insert description here
// You can write your code in this editor

if room == rm_game {
	
	if keyboard_check_pressed(ord("Q")) {
		tower_type = 1
	} else if keyboard_check_pressed(ord("W")) {
		tower_type = 2
	} else if keyboard_check_pressed(ord("E")) {
		tower_type = 3
	}
	
	if mouse_check_button_pressed(mb_left) and collision_circle(mouse_x,mouse_y, 5, obj_tower_base, false, false){
		nearest_base = instance_nearest(mouse_x,mouse_y, obj_tower_base)
		if tower_type = 1 {
			if PLAYER_GOLD >= 200 {
			instance_create_depth(nearest_base.x, nearest_base.y, 0, obj_tower_1)
			instance_deactivate_object(nearest_base)
			PLAYER_GOLD-= 200
			}
		} else if tower_type = 2 {
			if PLAYER_GOLD >= 250 {
			instance_create_depth(nearest_base.x, nearest_base.y, 0, obj_tower_2)
			instance_deactivate_object(nearest_base)
			PLAYER_GOLD-= 250
			}
		} else if tower_type = 3 {
			if PLAYER_GOLD >= 300 {
			instance_create_depth(nearest_base.x, nearest_base.y, 0, obj_tower_3)
			instance_deactivate_object(nearest_base)
			PLAYER_GOLD-= 300
			}
		}
	} else if mouse_check_button_pressed(mb_right) and collision_circle(mouse_x,mouse_y, 5, obj_debug_tower, false, false){
		nearest_tower = instance_nearest(mouse_x,mouse_y, obj_debug_tower)
		instance_create_depth(nearest_tower.x, nearest_tower.y, 0, obj_tower_base)
		instance_deactivate_object(nearest_tower)
		PLAYER_GOLD+=100
	}
	
}