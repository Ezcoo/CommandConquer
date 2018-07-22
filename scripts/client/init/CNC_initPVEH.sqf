["DEBUG", "CNC_initPVEH.sqf initialized", 1] call CNC_FNC_LogContent;

"CNC_arr_commVotePlayerList" addPublicVariableEventHandler {

lbClear 124;

{
    lbAdd [124, format ["%1, %2 votes", CNC_arr_commVotePlayerList select _forEachIndex select 1, CNC_arr_commVotePlayerList select _forEachIndex select 3]];
} forEach CNC_arr_commVotePlayerList;

["DEBUG", format ["CNC_initPVEH.sqf: Content of CNC_arr_commVotePlayerList: %1", CNC_arr_commVotePlayerList], 1] call CNC_FNC_LogContent;

};