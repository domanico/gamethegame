/// @description Move

var HINPUT = keyboard_check(vk_right) - keyboard_check(vk_left);

if HINPUT != 0 {
	HSPEED += HINPUT*ACCELERATION;
	HSPEED = clamp(HSPEED, -MAXSPEED, MAXSPEED);
	DIRECTION = HINPUT;
} else {
	HSPEED = lerp(HSPEED, 0, FRICTION);
}

if !place_meeting(x, y+1, o_solid) {
	VSPEED += GRAVITY;
} else {
	if keyboard_check_pressed(vk_up) {
		VSPEED = JUMPHEIGHT;
	}
}

if place_meeting(x+HSPEED, y, o_solid) {

	while !place_meeting(x+sign(HSPEED), y, o_solid) {
		x += sign(HSPEED);
	}
	
	HSPEED = 0;
}

x += HSPEED;

if place_meeting(x, y+VSPEED, o_solid) {

	while !place_meeting(x, y+sign(VSPEED), o_solid) {
		y += sign(VSPEED);
	}
	
	VSPEED = 0;
}

y += VSPEED;