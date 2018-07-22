CNC_FNC_RegisterCommVote = {

params ["_oldClientVoteUID", "_newClientVoteUID"];

if (!isServer) exitWith {};

if (!(_oldClientVoteUID isEqualTo _newClientVoteUID)) then {

    [_oldClientVoteUID, -1] call CNC_FNC_AddVote;

    [_newClientVoteUID, 1] call CNC_FNC_AddVote;

    CNC_var_oldCommVoteUID = _newClientVoteUID;

    publicVariable "CNC_arr_commVotePlayerList";

    };

};

CNC_FNC_AddVote = {

    params ["_voteUID", "_numberOfVotes"];
        _voteIndex = CNC_arr_commVotePlayerList findIf {_x select 2 isEqualTo _voteUID};

        if (_voteIndex == -1) exitWith {};

        _numberOfVotesTarget = CNC_arr_commVotePlayerList select _voteIndex select 3;
        _vote = CNC_arr_commVotePlayerList select _voteIndex;
        _vote set [3, (_numberOfVotesTarget + _numberOfVotes)];

};


/*
    if (_oldClientVoteUID != _newClientVoteUID) then {

        _numberofVotesNewTarget = CNC_arr_commVotePlayerList select _clientVoteIndex select 3;
        CNC_arr_commVotePlayerList select _clientVoteIndex set [3, (_numberofVotesNewTarget + 1)];

        _oldClientVote = CNC_arr_commVotePlayerList select _oldClientVoteIndex;

        if (!(isNil "_oldClientVote")) then {
            _numberOfVotesOldTarget = CNC_arr_commVotePlayerList select _oldClientVoteIndex select 3;
            CNC_arr_commVotePlayerList select _oldClientVoteIndex set [3, (_numberofVotesOldTarget - 1)];
        };

*/