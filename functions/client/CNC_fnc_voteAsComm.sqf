CNC_FNC_VoteAsComm = {

// Note: the index of the lb selection equals to commVotePlayerList array index as the contents
// of the array are listed in order
params ["_lbCurrentSelectionIndex"];

[CNC_var_oldCommVoteIndex, _lbCurrentSelectionIndex] remoteExecCall ["CNC_FNC_RegisterCommVote", 2];

CNC_var_oldCommVoteIndex = _lbCurrentSelectionIndex;

};