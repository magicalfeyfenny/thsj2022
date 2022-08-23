draw_sprite_ext(spr_dropshadow, 0, x, y + 80, 2, 2, 0, c_white, 1);
draw_self();

if (attack_timer < 30 ) {
	draw_set_alpha(0.25);
	draw_set_color(c_orange);
	draw_triangle(	x + lengthdir_x(60, attack_dir + 90),	y + lengthdir_y(60, attack_dir + 90),
					x + lengthdir_x(60, attack_dir - 90),	y + lengthdir_y(60, attack_dir - 90),
					x + lengthdir_x(500, attack_dir),		y + lengthdir_y(500, attack_dir), false);
	draw_set_alpha(1);
	draw_triangle(	x + lengthdir_x(60, attack_dir + 90),	y + lengthdir_y(60, attack_dir + 90),
					x + lengthdir_x(60, attack_dir - 90),	y + lengthdir_y(60, attack_dir - 90),
					x + lengthdir_x(500, attack_dir),		y + lengthdir_y(500, attack_dir), true);
}
if (attacking) {
	draw_set_alpha(0.25);
	draw_set_color(c_red);
	draw_circle(x, y, 60, false);
	draw_set_alpha(1);
	draw_circle(x, y, 60, true);
}


