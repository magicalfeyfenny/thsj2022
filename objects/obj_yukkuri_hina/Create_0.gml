// Inherit the parent event
event_inherited();

hp = 200;
image_xscale = 2;
image_yscale = 2;
spin_collide = ds_list_create();

direction = random(360);
change_timer = 60 + random(120);
attack_timer = 120 + random(300);
dspeed = 0.1 + random(0.5);


attacking = 0;

