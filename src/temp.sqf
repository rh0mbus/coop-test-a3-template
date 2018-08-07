comment "Exported from Arsenal by rh0mbus";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "TRYK_U_B_PCUHsW9";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_TacVestIR_blk";
this addItemToVest "HandGrenade";
this addItemToVest "MiniGrenade";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {this addItemToVest "20Rnd_762x51_Mag";};
this addBackpack "B_Patrol_Respawn_bag_F";
this addHeadgear "H_HelmetSpecO_blk";
this addGoggles "G_Balaclava_TI_blk_F";

comment "Add weapons";
this addWeapon "srifle_DMR_06_olive_F";
this addPrimaryWeaponItem "muzzle_snds_B";
this addPrimaryWeaponItem "optic_DMS";
this addWeapon "hgun_Rook40_F";
this addHandgunItem "muzzle_snds_L";
this addWeapon "Rangefinder";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles_OPFOR";

comment "Set identity";
this setFace "GreekHead_A3_09";
this setSpeaker "male06eng";
