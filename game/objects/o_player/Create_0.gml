/// @description Variables
HSPEED = 0;
VSPEED = 0;
MAXSPEED = 4;
GRAVITY = 1;
ACCELERATION = .5;
FRICTION = .25;
JUMPHEIGHT = -8;
DIRECTION = 1;

// Key Mapping
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);