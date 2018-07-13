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

_serverFunctions =
[
];

    // Compile common functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _commonFunctions;


    // Compile server functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _serverFunctions;

*/

// RUN SCRIPTS

_arrScriptsServer = [
];

// NOTE: common (shared) scripts are stored in global variable, because also initPlayerLocal.sqf executes the contents of the same list

CNC_arrScriptsCommon = [
];

if (isServer) then {
    {
        _handle = [] execVM _x;
    } forEach _arrScriptsServer;
};

if (isServer) then {
    {
        _handle = [] execVM _x;
    } forEach _arrScriptsCommon;
}