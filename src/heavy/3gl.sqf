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

		// MX 3GL
		_crate addWeaponCargoGlobal [ "arifle_MX_GL_khk_F", 1];
		_crate addItemCargoGlobal [ "optic_Hamr", 1];
		_crate addItemCargoGlobal [ "30Rnd_65x39_caseless_mag", 4];
		_crate addItemCargoGlobal [ "3Rnd_Smoke_Grenade_shell", 1];
		_crate addItemCargoGlobal [ "3Rnd_HE_Grenade_shell", 1];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 3];
		_crate addItemCargoGlobal [ "ACE_morphine", 1];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 1];

		// Call the sleep delay for the next crate fill
		sleep delay;
	}
}

