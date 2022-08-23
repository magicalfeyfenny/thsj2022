image_index = (direction + 22.5) / 45;
if (direction + 22.5 >= 360 ) {
	image_index = 0;
}
if (hp <= 0) {
	instance_destroy();
}	


if (!place_meeting( x + lengthdir_x( dspeed, direction ), y, obj_wall ) ) {
	x += lengthdir_x( dspeed, direction );
}
if (!place_meeting( x, y + lengthdir_y( dspeed, direction ), obj_wall ) ) {
	y += lengthdir_y( dspeed, direction );
}

depth = -y;
