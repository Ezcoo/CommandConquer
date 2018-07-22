CNC_FNC_VoteAsComm = {

// Note: the index of the lb selection equals to commVotePlayerList array index as the contents
// of the array are listed in order
params ["_lbCurrentSelectionIndex"];

if (isNil "_lbCurrentSelectionIndex" || _lbCurrentSelectionIndex == -1) then {
    _lbCurrentSelectionIndex = 0;
};

["DEBUG", format ["CNC_FNC_VoteAsComm: Current _lbCurSel client UID: %1", CNC_arr_commVotePlayerList select _lbCurrentSelectionIndex select 2], 1] call CNC_FNC_LogContent;

[CNC_var_oldCommVoteUID, CNC_arr_commVotePlayerList select _lbCurrentSelectionIndex select 2] remoteExecCall ["CNC_FNC_RegisterCommVote", 2];

["DEBUG", format ["CNC_FNC_VoteAsComm: CNC_FNC_RegisterCommVote was called with old UID: %1 and new UID: %2", CNC_var_oldCommVoteUID, CNC_arr_commVotePlayerList select _lbCurrentSelectionIndex select 2], 1] call CNC_FNC_LogContent;

CNC_var_oldCommVoteUID = CNC_arr_commVotePlayerList select _lbCurrentSelectionIndex select 2;

};