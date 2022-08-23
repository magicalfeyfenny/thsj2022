if ( instance_number(obj_enemy_parent) < 200 + (obj_player_cirno.chain_rank * 50) ) {	
	repeat( 1 + obj_player_cirno.chain_rank ) {
		sx = 280 + random(720);
		sy = 280 + random(720);
		while ((sx <= obj_player_cirno.x + 96) && (sx >= obj_player_cirno.x - 96) ) {
			sx = 280 + random(720);
		}
		while ((sy <= obj_player_cirno.y + 96) && (sy >= obj_player_cirno.y - 96) ) {
			sy = 280 + random(720);
		}
		randomizer = random(1);
		if (randomizer < 0.985 && obj_player_cirno.chain_rank >= 0) {
			instance_create_layer( sx, sy, "lyr_enemies", obj_yukkuri_marisa );
		} else {
			if (randomizer < 0.99 && obj_player_cirno.chain_rank >= 1) {
				instance_create_layer(sx, sy, "lyr_enemies", obj_yukkuri_hina );
			} else {
				if (randomizer < 0.995 && obj_player_cirno.chain_rank >= 2) {
					instance_create_layer(sx, sy, "lyr_enemies", obj_yukkuri_keine );
				} else {
					if (randomizer < 1 && obj_player_cirno.chain_rank >= 3) {
						instance_create_layer(sx, sy, "lyr_enemies", obj_yukkuri_suwako);
					}
				}
			}
		}
	}
}


