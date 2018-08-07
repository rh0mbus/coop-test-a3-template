
// Paste this into the condition field of a trigger and set it to "Any player" --> Present
// It will kill any player that enters the area. Useful for level boundaries
// Use in conjunction with the player hinting script to warn individual players

call {if (count thislist > 0) then {{if (alive _x) then {_x setDamage 1}} forEach thislist};false}