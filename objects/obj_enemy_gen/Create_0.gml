/// @description Insert description here
// You can write your code in this editor
depth=1
bg_col = make_color_rgb(10,27,7)

globalvar WAVE_START;
WAVE_START = false

globalvar NUM_ENEMY;
NUM_ENEMY = 3

enemy_to_gen = 0
gen_wave = false
gen_timer = 0
time_btwn_gen = 120

gen_x = -32
gen_y = room_height/2

gen_x_var = 8
gen_y_var = 8

start_timer = true