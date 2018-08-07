// Wesley Legault

// Use this script for light weapons boxes

if(isServer) then {

	// The delay on refilling the container
	delay = 120;
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

		// Vector
		_crate addWeaponCargoGlobal [ "CUP_hgun_MicroUzi", 1];
		_crate addItemCargoGlobal [ "optic_Aco_smg", 1];
		_crate addItemCargoGlobal [ "CUP_30Rnd_9x19_UZI", 5];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 3];
		_crate addItemCargoGlobal [ "ACE_morphine", 1];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 1];

		// Call the sleep delay for the next crate fill
		sleep delay;
	}
}

