// COMPILE FUNCTIONS FOR LATER USE (OPTIMIZATION)

_arrFunctionsServer = [
"functions\server\CNC_initCommVote.sqf",
"functions\server\CNC_registerCommVote.sqf"
];

// NOTE: Content of _arrFunctionsCommon should be the same for client and server
_arrFunctionsCommon = [
"cfg\common\CNC_cfg_locations.sqf",
"cfg\common\CNC_cfg_commonVars.sqf",
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
];

_arrScriptsCommon = [
];

{
    _handle = [] execVM _x;
} forEach _arrScriptsServer;


{
    _handle = [] execVM _x;
} forEach _arrScriptsCommon;

["INITIALIZATION", "Server init complete!", 1] call CNC_FNC_LogContent;