if (attack_timer > 90) {
	draw_sprite_ext(spr_dropshadow, 0, x, y + 80, 2, 2, 0, c_white, 1);
	draw_self();
}

if (attack_timer < 90 ) {
	draw_set_alpha(0.25);
	draw_set_color(c_orange);
	draw_circle( attack_x, attack_y, 120, false);
	draw_set_alpha(1);
	draw_circle( attack_x, attack_y, 120, true);
}
if (attacking) {
	draw_set_alpha(0.25);
	draw_set_color(c_red);
	draw_circle(x, y, 120, false);
	draw_set_alpha(1);
	draw_circle(x, y, 120, true);
}



