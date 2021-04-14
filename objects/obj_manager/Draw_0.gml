/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_path(path_enemy_1,room_width/2,32,true)
draw_path(path_enemy_2,room_width/2,32,true)

draw_set_color(c_white)
draw_rectangle(30, room_height-20,130,room_height-130,false)

draw_set_color(c_yellow)
draw_text(60,30, "GOLD: " + string(PLAYER_GOLD))
draw_text(room_width - 200, 30, "(Q) Base Tower  : 200")
draw_text(room_width - 200, 45, "(W) Gunner Tower: 250")
draw_text(room_width - 200, 60, "(E) Sniper Tower: 300")
draw_text(room_width - 200, 75, "    R-Click to Sell")

if obj_player.tower_type = 1 {
	draw_sprite_ext(spr_tower1,0,80, room_height-80,1,1,0,image_blend, image_alpha)
} else if obj_player.tower_type = 2 {
	draw_sprite_ext(spr_tower2,0,80, room_height-80,1,1,0,image_blend, image_alpha)
} else if obj_player.tower_type = 3 {
	draw_sprite_ext(spr_tower3,0,80, room_height-80,1,1,0,image_blend, image_alpha)
}
