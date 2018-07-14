
// RUN SCRIPTS

_arrScriptsServer = [
];

// NOTE: common (shared) scripts are stored in global variable, because also initPlayerLocal.sqf executes the contents of the same list

_arrScriptsCommon = [
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