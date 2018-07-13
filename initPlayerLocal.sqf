// RUN SCRIPTS

_arrScriptsClient = [
"scripts\client\updateMhqPosOnMap.sqf"
];

// Derived from initServer.sqf
_arrScriptsCommon = CNC_arrScriptsCommon;

{
    _handle = [] execVM _x;
} forEach _arrScriptsClient;

{
    _handle = [] execVM _x;
} forEach _arrScriptsClient;

"Player initialization complete!" call BIS_fnc_log;