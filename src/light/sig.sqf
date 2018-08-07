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

		// SIG P226
		_crate addWeaponCargoGlobal [ "hlc_pistol_P226R_40Enox", 1];
		_crate addItemCargoGlobal [ "hlc_12Rnd_40SW_B_P226", 5];
		_crate addItemCargoGlobal [ "HLC_Optic_Romeo1_RX", 1];
		_crate addItemCargoGlobal [ "hlc_acc_DBALPL_FL", 1];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 3];
		_crate addItemCargoGlobal [ "ACE_morphine", 1];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 1];

		// Call the sleep delay for the next crate fill
		sleep delay;
	}
}

