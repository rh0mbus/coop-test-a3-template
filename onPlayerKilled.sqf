player setVariable["Saved_Loadout", getUnitLoadout player];
removeAllWeapons player;
removeBackpack player;
removeVest player;
removeHeadgear player;

_remaining = [east] call BIS_fnc_respawnTickets;

format["%1 was killed! -- %2 tickets remain until mission ends --", name player, _remaining] remoteExec["hint"];
