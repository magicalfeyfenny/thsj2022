function scr_particles_init(){
	//particle systems (what layers, etc. can they appear on)
	global.partsys_bg = part_system_create_layer( "bg_particles", true );
	global.partsys_fg = part_system_create_layer( "fg_particles", true );
	
	//particle emitters (where they originate from)
	#region partsys_bg
	global.partemit[ PART_EMIT_CHERRYRAIN ] = part_emitter_create( global.partsys_bg ); { 
		part_emitter_region(	global.partsys_bg, global.partemit[ PART_EMIT_CHERRYRAIN ], -100, WINDOW_BASE_WIDTH + 100, -50, -50, ps_shape_line, ps_distr_linear ); 
	}
	#endregion
	#region partsys_fg

	#endregion
	
	//particle types (the effect shape and behavior itself)
	global.parttype[ PART_TYPE_CHERRYFOUNTAIN ] = part_type_create(); {
		part_type_sprite(		global.parttype[ PART_TYPE_CHERRYFOUNTAIN ], spr_particle_cherry, false, false, false );
		part_type_size(			global.parttype[ PART_TYPE_CHERRYFOUNTAIN ],	.25, .75, 0, 0 );
		part_type_speed(		global.parttype[ PART_TYPE_CHERRYFOUNTAIN ], .01, .02, -.001, 0 );
		part_type_orientation(	global.parttype[ PART_TYPE_CHERRYFOUNTAIN ], 0, 359, .5, 0, true );
		part_type_direction(	global.parttype[ PART_TYPE_CHERRYFOUNTAIN ], 45, 135, -.05, .03 );
		part_type_gravity(		global.parttype[ PART_TYPE_CHERRYFOUNTAIN ], .008, 280 );
		part_type_life(			global.parttype[ PART_TYPE_CHERRYFOUNTAIN ] , 500, 1500 );
		part_type_alpha3(		global.parttype[ PART_TYPE_CHERRYFOUNTAIN ], .95, .75, 0 );
	}
	
}