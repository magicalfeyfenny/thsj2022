draw_set_alpha(min(.7, alpha_cycle) );
draw_set_color(c_black);
draw_rectangle(-1, -1, 641, 361, false);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign( fa_left );

draw_set_font( fn_textsmall );
draw_text( 2, 2, "Hold 'C' to skip. . ." );

draw_set_font( fn_textlarge );
draw_text_color(30, 40, "Mystia"
						, c_fuchsia, c_fuchsia, c_white, c_white, alpha_cycle - 1);
draw_set_font( fn_textsmall );
draw_text_color(45, 70,   "See, I'm working on my endurance. I wanna get like super pumped to impress my bugfriend."
						, c_fuchsia, c_fuchsia, c_white, c_white, alpha_cycle - 2);
draw_text_color(45, 90,	  "So what I need you to do, is, like, shoot me a lot."
						, c_fuchsia, c_fuchsia, c_white, c_white, alpha_cycle - 3);
draw_text_color(45, 110,	  "Not too much, mind you. Just until I say 'when'~"
						, c_fuchsia, c_fuchsia, c_white, c_white, alpha_cycle - 4);

draw_set_font( fn_textlarge );
draw_text_color(30, 150, "Youmu"
						, c_lime, c_lime, c_white, c_white, alpha_cycle - 7);
draw_set_font( fn_textsmall );
draw_text_color(45, 180,  "So, lemme get this straight. You want me, to shoot a strange bird, 'till 'when'?"
						, c_lime, c_lime, c_white, c_white, alpha_cycle - 8);
draw_text_color(45, 200,  "...why does Lady Yuyuko have a dinner table set up?"
						, c_lime, c_lime, c_white, c_white, alpha_cycle - 11);
draw_text_color(45, 220,  "*sigh* this is my punishment for having a cool sword and ghost powers, i knew it was coming"
						, c_lime, c_lime, c_white, c_white, alpha_cycle - 15);
						

draw_text_color(45, 270,  "Arrows move, Z shoots"
						, c_ltgrey, c_ltgrey, c_white, c_white, alpha_cycle - 17);


