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
this addVest "V_TacVestIR_blk";
this addHeadgear "H_HelmetSpecO_blk";
this addGoggles "G_Balaclava_TI_blk_F";

comment "Add weapons";
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
