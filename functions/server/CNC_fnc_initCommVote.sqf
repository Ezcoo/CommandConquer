CNC_FNC_InitCommVote = {

params ["_voteStartClient"];

// Array format: 0: player index, 1: player name, 2: number of votes
commVotePlayerList = [0, "No commander", 0];

// Note: "No commander" has index 0 (see above), starting from index 1
_i = 1;
{
    commVotePlayerList pushBack [_i, name _x, 0];
    _i = _i + 1;
// Exclude headless clients from vote
} forEach allPlayers - entities "HeadlessClient_F";

publicVariable "commVotePlayerList";

["INFORMATION", format ["Commander vote has been started by %1", _voteStartClient]] call CNC_FNC_LogContent;

};