// Use this script for explosive boxes

if(isServer) then {

	// The delay on refilling the container
	delay = 1200;
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

		// --------------------- Mains ---------------------

		// AAC
		_crate addWeaponCargoGlobal [ "hlc_rifle_honeybadger", 1];
		_crate addItemCargoGlobal [ "muzzle_HBADGER", 1];
		_crate addItemCargoGlobal [ "acc_pointer_IR", 1];
		_crate addItemCargoGlobal [ "SMA_eotech552_3XUP", 1];
		_crate addItemCargoGlobal [ "29rnd_300BLK_STANAG", 20];

		// MP7
		_crate addWeaponCargoGlobal [ "rhsusf_weap_MP7A2", 1];
		_crate addItemCargoGlobal [ "rhsusf_acc_rotex_mp7", 1];
		_crate addItemCargoGlobal [ "acc_pointer_IR", 1];
		_crate addItemCargoGlobal [ "CUP_optic_CompM4", 1];
		_crate addItemCargoGlobal [ "rhsusf_mag_40Rnd_46x30_FMJ", 20];

		// SCAR
		_crate addWeaponCargoGlobal [ "SMA_Mk16_blackQCB", 1];
		_crate addItemCargoGlobal [ "SMA_supp2b_556", 1];
		_crate addItemCargoGlobal [ "acc_pointer_IR", 1];
		_crate addItemCargoGlobal [ "optic_Arco_blk_F", 1];
		_crate addItemCargoGlobal [ "SMA_30Rnd_556x45_M855A1", 20];
		_crate addItemCargoGlobal [ "SMA_30Rnd_556x45_M855A1_Tracer", 10];

		// M14
		_crate addWeaponCargoGlobal [ "srifle_DMR_06_olive_F", 1];
		_crate addItemCargoGlobal [ "muzzle_snds_B", 1];
		_crate addItemCargoGlobal [ "optic_DMS", 1];
		_crate addItemCargoGlobal [ "20Rnd_762x51_Mag", 10];
		_crate addItemCargoGlobal [ "ACE_20Rnd_762x51_Mag_Tracer", 10];

		// Add backpacks
		_crate addBackpackCargoGlobal ["B_AssaultPack_blk", 1];
		_crate addBackpackCargoGlobal ["B_Patrol_Respawn_bag_F", 1];

		// Grenades
		_crate addItemCargoGlobal [ "HandGrenade", 10];
		_crate addItemCargoGlobal [ "MiniGrenade", 10];
		_crate addItemCargoGlobal [ "SmokeShell", 20];

		// Explosives
		_crate addItemCargoGlobal [ "rhsusf_m112x4_mag", 8];
		_crate addItemCargoGlobal [ "ACE_Clacker", 4];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 30];
		_crate addItemCargoGlobal [ "ACE_morphine", 20];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 10];

		// Call the sleep delay for the next crate fill
		sleep delay;

		format["Boat storage refilled at insertion!"] remoteExec["hint"];
	}
}

