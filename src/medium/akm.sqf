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

		// AKM
		_crate addWeaponCargoGlobal [ "arifle_AKM_F", 1];
		_crate addItemCargoGlobal [ "30Rnd_762x39_Mag_F", 5];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 3];
		_crate addItemCargoGlobal [ "ACE_morphine", 1];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 1];

		// Call the sleep delay for the next crate fill
		sleep delay;
	}
}

