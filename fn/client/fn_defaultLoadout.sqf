/*
	Author: Kingsley
	Description: Gives the specified unit the default loadout
	Parameter(s): OBJECT - Player to be given the loadout
	Returns: OBJECT (return the unit)
*/

if (isServer || isDedicated) exitWith {};

private ["_unit"];
_unit = _this;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
_unit forceAddUniform "U_B_CTRG_1";
for "_i" from 1 to 5 do {_unit addItemToUniform "FirstAidKit";};
_unit addVest "V_PlateCarrierH_CTRG";
for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 4 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItemToVest "16Rnd_9x21_Mag";};
_unit addBackpack "B_Carryall_cbr";
for "_i" from 1 to 8 do {_unit addItemToBackpack "FirstAidKit";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "30Rnd_65x39_caseless_mag";};
_unit addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_blue";};
_unit addHeadgear "H_HelmetSpecB";
_unit addWeapon "arifle_MX_Black_F";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addWeapon "hgun_P07_F";
_unit addWeapon "Binocular";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles";

_unit