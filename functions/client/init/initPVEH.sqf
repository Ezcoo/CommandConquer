"CNC_arr_commVotePlayerList" addPublicVariableEventHandler {

    lnbclear 124;

    {
        lnbAddRow [124, [CNC_arr_commVotePlayerList select 1, CNC_arr_commVotePlayerList select 2]];
    } forEach CNC_arr_commVotePlayerList;

};