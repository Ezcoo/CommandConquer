/*
	author: Net_2
	description: none
	returns: nothing
*/

// COMPILE FUNCTIONS FOR LATER USE

/*

_commonFunctions =
[
];

_clientFunctions =
[
];


    // Compile common functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _commonFunctions;

    // Compile client functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _clientFunctions;

*/

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