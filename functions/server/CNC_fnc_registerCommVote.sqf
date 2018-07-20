CNC_FNC_RegisterCommVote = {

// _index: index of the player that client has voted
params ["_oldClientVoteIndex, _clientVoteIndex"];


_numberofVotesNewTarget = CNC_arr_commVotePlayerList select _clientVoteIndex select 2;
CNC_arr_commVotePlayerList set [_clientVoteIndex, _numberofVotesNewTarget + 1];

_numberOfVotesOldTarget = CNC_arr_commVotePlayerList select _oldClientVoteIndex select 2;
CNC_arr_commVotePlayerList set [_oldClientVoteIndex, _numberOfVotesOldTarget - 1];

publicVariable "CNC_arr_commVotePlayerList";

};