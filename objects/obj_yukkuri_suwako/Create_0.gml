// Inherit the parent event
event_inherited();

hp = 100;
image_xscale = 2;
image_yscale = 2;
slam_collide = ds_list_create();

direction = random(360);
change_timer = 60 + random(120);
attack_timer = 120 + random(300);
dspeed = 0.1 + random(0.5);
attack_x = 0;
attack_y = 0;

attacking = 0;

soundplayed = false;



