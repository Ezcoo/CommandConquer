_arrFunctionsClient = [
// Init both client and common vars (need to have priority as other scripts use the vars)
"cfg\CNC_cfg_initVarsClient.sqf",
"functions\client\init\CNC_fnc_initCommVoteClient.sqf",
"functions\client\CNC_fnc_createCommVoteDialog.sqf",
"functions\client\CNC_fnc_updateCommPosOnMap.sqf",
"functions\client\CNC_fnc_updateMhqPosOnMap.sqf",
"functions\client\CNC_fnc_voteAsComm.sqf"
];

// NOTE: Content of _arrFunctionsCommon should be the same for client and server
_arrFunctionsCommon = [
"functions\common\CNC_fnc_logContent.sqf"
];

{
    call compile preprocessFileLineNumbers _x;
} forEach _arrFunctionsClient;

{
    call compile preprocessFileLineNumbers _x;
} forEach _arrFunctionsCommon;

// If player is headless client
if (!hasInterface) then {
    _arrFunctionsHC = [
    ];

    {
        call compile preprocessFileLineNumbers _x;
    } forEach _arrFunctionsHC;

    ["INITIALIZATION", "Headless client functions compiled!", 0] call CNC_FNC_LogContent;
};


// RUN SCRIPTS

_arrScriptsClient = [
"scripts\client\CNC_updateMhqPosOnMap.sqf",
"scripts\client\CNC_updateCommPosOnMap.sqf",
"scripts\client\init\CNC_initLocations.sqf",
"scripts\client\ui\CNC_createCommVoteDialog.sqf",
"scripts\client\init\CNC_initPVEH.sqf"
];


_arrScriptsCommon = [
];

{
    _handle = [] execVM _x;
} forEach _arrScriptsClient;

{
    _handle = [] execVM _x;
} forEach _arrScriptsCommon;


// If player is headless client
if (!hasInterface) then {
    _arrScriptsHC = [
    ];

    {
        _handle = [] execVM _x;
    } forEach _arrScriptsHC;

    ["INITIALIZATION", "Headless client scripts running!", 1] call CNC_FNC_LogContent;
};

["INITIALIZATION", "Player init complete!", 1] call CNC_FNC_LogContent;