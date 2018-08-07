// Wesley Legault

// Use this script for heavy weapons boxes

if(isServer) then {

	// The delay on refilling the container
	delay = 300;
	_crate = _this select 0;

	// Always Run
	while {true} do {

		// Empty out the crate
		clearWeaponCargoGlobal _crate;
		sleep 0.3;
		clearMagazineCargoGlobal _crate;
		sleep 0.3;
		clearItemCargoGlobal _crate;
		sleep 0.3;
		clearBackpackCargoGlobal _crate;
		sleep 0.3;

		// FN Minimi SPW
		_crate addWeaponCargoGlobal [ "LMG_03_F", 1];
		_crate addItemCargoGlobal [ "optic_Holosight_blk_F", 1];
		_crate addItemCargoGlobal [ "200Rnd_556x45_Box_F", 2];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 3];
		_crate addItemCargoGlobal [ "ACE_morphine", 1];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 1];

		// Call the sleep delay for the next crate fill
		sleep delay;
	}
}

