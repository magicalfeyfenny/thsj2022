draw_set_alpha( ( 300 - countdown ) / 100 );
//draw CG
draw_sprite(spr_bg_victory, 0, 0, 0);
draw_set_font(fn_cursive);
draw_set_halign(fa_left);
draw_text_ext_transformed_color_border(20, 330, "Final score: " + string(floor(global.scoring)), 20, 500, 1, 1, 0, c_blue, c_blue, c_aqua, c_aqua, ( 200 - countdown ) / 100, 1, c_white); 
draw_set_halign(fa_right);
draw_text_ext_transformed_color_border(630, 330, "Next rodeo...", 20, 500, 1, 1, 0, c_blue, c_blue, c_aqua, c_aqua, ( 200 - countdown ) / 100, 1, c_white); 





