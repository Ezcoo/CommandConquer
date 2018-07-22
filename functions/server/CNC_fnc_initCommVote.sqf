CNC_FNC_InitCommVote = {

params ["_voteStartClient"];

// Array format: 0: player index, 1: player name, 2: number of votes
CNC_arr_commVotePlayerList = [[0, "No commander", "0", 0]];

// Note: "No commander" has index 0 (see above), starting from index 1
{
    CNC_arr_commVotePlayerList pushBack [_forEachIndex + 1, name _x, getPlayerUID _x, 0];
// Exclude headless clients from vote
} forEach allPlayers - entities "HeadlessClient_F";

["DEBUG", format ["CNC_FNC_InitCommVote: Content of CNC_arr_commVotePlayerList: %1", CNC_arr_commVotePlayerList], 1] call CNC_FNC_LogContent;

[] remoteExecCall ["CNC_FNC_CreateCommVoteDialog", -2];

publicVariable "CNC_arr_commVotePlayerList";

["INFORMATION", format ["Commander vote has been started by %1", name _voteStartClient]] call CNC_FNC_LogContent;

};