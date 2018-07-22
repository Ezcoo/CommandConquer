CNC_FNC_CreateCommVoteDialog = {

if (!isServer && hasInterface) then {

    _dialogOpenedSuccessfully = createDialog "CommVoteTest";

    if !(_dialogOpenedSuccessfully) then {
        hint "Failed to open comm vote dialog!";
    };

    [player] call CNC_FNC_PvCommVoteList;

    CNC_var_commVoteOngoing = true;

    if (isNil "CNC_arr_commVotePlayerList") then {
        CNC_arr_commVotePlayerList = [[0, "No commander", "0", 0]];
    };

    [CNC_var_oldCommVoteUID, CNC_arr_commVotePlayerList select 0 select 2] remoteExecCall ["CNC_FNC_RegisterCommVote", 2];

};

};