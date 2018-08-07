// This script ends the mission when the sides tickets reach zero
// Can be easily modified. Calls appropriate ending when the mission ends.

private ["_eastTickets", "_westTickets"];
while {true} do {
	sleep 10;

	_eastTickets = [east] call BIS_fnc_respawnTickets;
	_westTickets = [west] call BIS_fnc_respawnTickets;

	if (_eastTickets == 0) exitWith {
		if (side player == east) then {
			"All tickets spent!" call BIS_fnc_endMission;
		} else {
			"BluforWin" call BIS_fnc_endMission;
		}
	};
	if (_westTickets == 0) exitWith {
		if (side player == east) then {
			"OpforWin" call BIS_fnc_endMission;
		} else {
			"BluforLose" call BIS_fnc_endMission;
		}
	};
};
