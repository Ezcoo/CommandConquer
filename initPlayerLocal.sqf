// RUN SCRIPTS

_arrScriptsClient = [
"scripts\client\updateMhqPosOnMapNew.sqf",
"scripts\client\updateCommPosOnMap.sqf"
];

// Derived from initServer.sqf
_arrScriptsCommon = [
];

{
    _handle = [] execVM _x;
} forEach _arrScriptsClient;

{
    _handle = [] execVM _x;
} forEach _arrScriptsClient;

"Player initialization complete!" call BIS_fnc_log;