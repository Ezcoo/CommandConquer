CNC_FNC_RegisterCommVote = {

// _index: index of the player that client has voted
params ["_oldClientVoteIndex, _clientVoteIndex"];


_numberofVotesNewTarget = commVotePlayerList select _clientVoteIndex select 2;
commVotePlayerList set [_clientVoteIndex, _numberofVotesNewTarget + 1];

_numberOfVotesOldTarget = commVotePlayerList select _oldClientVoteIndex select 2;
commVotePlayerList set [_oldClientVoteIndex, _numberOfVotesOldTarget - 1];

publicVariable "commVotePlayerList";

};