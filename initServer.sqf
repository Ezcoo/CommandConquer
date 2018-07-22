// COMPILE FUNCTIONS FOR LATER USE (OPTIMIZATION)

_arrFunctionsServer = [
"cfg\CNC_cfg_initVarsServer.sqf",
"functions\server\CNC_fnc_initCommVote.sqf",
"functions\server\CNC_fnc_registerCommVote.sqf",
"functions\server\CNC_fnc_pvCommVoteList.sqf",
"functions\server\CNC_fnc_onPlayerConnected.sqf",
"functions\server\CNC_fnc_onPlayerDisconnected.sqf"
];

// NOTE: Content of _arrFunctionsCommon should be the same for client and server
_arrFunctionsCommon = [
"functions\common\CNC_fnc_logContent.sqf"
];

{
    call compile preprocessFileLineNumbers _x;
} forEach _arrFunctionsServer;

{
    call compile preprocessFileLineNumbers _x;
} forEach _arrFunctionsCommon;



// RUN SCRIPTS

_arrScriptsServer = [
"scripts\server\CNC_monitorAllPlayers.sqf"
];

_arrScriptsCommon = [
"cfg\common\CNC_cfg_commonVars.sqf",
"cfg\common\CNC_cfg_locations.sqf"
];

{
    _handle = [] execVM _x;
} forEach _arrScriptsServer;


{
    _handle = [] execVM _x;
} forEach _arrScriptsCommon;

["INITIALIZATION", "Server init complete!", 1] call CNC_FNC_LogContent;