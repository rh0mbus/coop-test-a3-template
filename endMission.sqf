// Ends the mission when the tickets run out

if(isServer) then {
	while{true} do {
		_tickets = [east] call BIS_fnc_respawnTickets;

		if(_tickets == 0) then {
			["End", true, true] call BIS_fnc_endMission;
		} else {
			sleep 15;
		}
	}
}

