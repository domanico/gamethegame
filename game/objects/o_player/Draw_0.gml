/// @description Draw gun

var dir = sign(HSPEED);

draw_self();
draw_sprite_ext(o_gun, 0, x, y,dir,1,0,image_blend, image_alpha);