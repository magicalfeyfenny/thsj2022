switch ( ceil(other.image_index) ) {	case PLAYER_POWERUP_FLAMES: {
		powerup_ammo = 500;
		powerup = PLAYER_POWERUP_FLAMES;
		break;
	}
	case PLAYER_POWERUP_LASER: {
		powerup_ammo = 50;
		powerup = PLAYER_POWERUP_LASER;
		break;
	}
	case PLAYER_POWERUP_MISSILE: {
		powerup_ammo = 200;
		powerup = PLAYER_POWERUP_MISSILE;
		break;
	}
	default: {	
		break;
	}
}
with (other) {
	instance_destroy();
}



