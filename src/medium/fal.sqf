// Wesley Legault

// Use this script for medium weapons boxes

if(isServer) then {

	// The delay on refilling the container
	delay = 240;
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

		// FN - FAL
		_crate addWeaponCargoGlobal [ "CUP_arifle_FNFAL_railed", 1];
		_crate addItemCargoGlobal [ "optic_MRCO", 1];
		_crate addItemCargoGlobal [ "CUP_20Rnd_762x51_FNFAL_M", 4];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 3];
		_crate addItemCargoGlobal [ "ACE_morphine", 1];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 1];

		// Call the sleep delay for the next crate fill
		sleep delay;
	}
}

