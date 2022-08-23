draw_sprite_ext(spr_dropshadow, 0, x, y + 80, 2, 2, 0, c_white, 1);
draw_self();

if (attack_timer < 60) {
	draw_set_alpha(0.25);
	draw_set_color(c_orange);
	draw_circle(x, y, 150, false);
	draw_set_alpha(1);
	draw_circle(x, y, 150, true);
}
if (attacking) {
	draw_set_alpha(0.25);
	draw_set_color(c_red);
	draw_circle(x, y, 150, false);
	draw_set_alpha(1);
	draw_circle(x, y, 150, true);
}
