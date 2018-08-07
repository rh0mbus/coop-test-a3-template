// Wesley Legault --- TO USE ---
// Make sure the ammo box in the scenario has a variable name (e.g. box0)
// In the init field add:  null = [box0]execVM "src\crate.sqf";
// Note: src\crate.sqf can just be any path to this script. This script
// can alse be renamed if need be. This script can be modified to use with a
// vehicle or a backpack if needed.


if(isServer) then {

	// The delay on refilling the container
	delay = 1200;
	_crate = _this select 0;

	// Not needed at the moment but could be useful
	// _weapons = weaponCargo _crate;
	// _ammo = magazineCargo _crate;
	// _items = itemCargo _crate;
	// _backpacks = getBackpackCargo _crate;

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

		//Add desired items below here
		
		// Binoculars
		_crate addWeaponCargoGlobal [ "Binocular", 3];

		// Grenades
		_crate addItemCargoGlobal [ "CUP_HandGrenade_M67", 6];
		_crate addItemCargoGlobal [ "SmokeShellBlue", 6];
		_crate addItemCargoGlobal [ "SmokeShell", 6];

		// Medical
		_crate addItemCargoGlobal [ "ACE_fieldDressing", 30];
		_crate addItemCargoGlobal [ "ACE_morphine", 15];
		_crate addItemCargoGlobal [ "ACE_EarPlugs", 10];

		//Pistol 
		_crate addWeaponCargoGlobal [ "hgun_Pistol_heavy_01_F", 3];
		_crate addItemCargoGlobal [ "11Rnd_45ACP_Mag", 18];
		_crate addItemCargoGlobal [ "optic_MRD", 3];

		// ---------------------- Main weapons ----------------------

		// SMG
		_crate addWeaponCargoGlobal ["SMG_01_F", 2];
		_crate addItemCargoGlobal [ "30Rnd_45ACP_Mag_SMG_01", 30];
		_crate addItemCargoGlobal [ "optic_ACO_grn_smg", 2];
		_crate addItemCargoGlobal [ "muzzle_snds_acp", 1];

		// Base Rifle
		_crate addWeaponCargoGlobal ["SMA_L85RISafgNR", 2];
		_crate addItemCargoGlobal [ "30Rnd_556x45_Stanag", 30];

		// Grenade Launcher Rifle 
		_crate addWeaponCargoGlobal [ "arifle_SPAR_01_GL_khk_F", 1];
		_crate addItemCargoGlobal [ "optic_Hamr", 1];
		_crate addItemCargoGlobal [ "1Rnd_HE_Grenade_shell", 7];
		_crate addItemCargoGlobal [ "1Rnd_SmokeRed_Grenade_shell", 1];
		_crate addItemCargoGlobal [ "1Rnd_Smoke_Grenade_shell", 3];
		_crate addItemCargoGlobal [ "30Rnd_556x45_Stanag", 10];

		// // Launchers
		// _crate addWeaponCargoGlobal ["rhs_weap_rpg7", 1];
		// _crate addItemCargoGlobal [ "rhs_rpg7_PG7V_mag", 10];
		// _crate addItemCargoGlobal [ "rhs_rpg7_OG7V_mag", 10];

		// LMG
		_crate addWeaponCargoGlobal [ "LMG_Zafir_F", 1];
		_crate addItemCargoGlobal [ "SMA_eotech552", 2];
		_crate addItemCargoGlobal [ "150Rnd_762x54_Box", 5];

		// DMR 	
		_crate addWeaponCargoGlobal [ "srifle_DMR_04_F", 1];
		_crate addItemCargoGlobal [ "optic_Holosight_smg_blk_F", 2];
		_crate addItemCargoGlobal [ "bipod_01_F_blk", 1];
		_crate addItemCargoGlobal [ "10Rnd_127x54_Mag", 12];

		// // Sniper 	
		// _crate addWeaponCargoGlobal [ "CUP_srifle_CZ550", 2];
		// _crate addItemCargoGlobal [ "CUP_5x_22_LR_17_HMR_M", 30];

		// // Optics
		// _crate addItemCargoGlobal [ "CUP_optic_MRad", 7];
		// _crate addItemCargoGlobal [ "rhs_weap_optic_smaw" , 1];
		// _crate addItemCargoGlobal [ "optic_KHS_blk", 1];

		// Storage 
		// _crate addBackpackCargoGlobal [ "B_AssaultPack_blk", 2];
		// _crate addBackpackCargoGlobal [ "B_Respawn_TentA_F", 1];

		// // Explosives
		// _crate addItemCargoGlobal [ "SatchelCharge_Remote_Mag", 5];
		// _crate addItemCargoGlobal [ "ACE_Clacker", 10];

		// Call the sleep delay for the next crate fill
		sleep delay;
		// Message to display to players when the crate is refilled (Optional)
		// format["Truck storage refilled at base!"] remoteExec["hint"];
	}
}

