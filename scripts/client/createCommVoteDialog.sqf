/*
	author: Net_2
	description: none
	returns: nothing
*/

sleep 10;

call CNC_fnc_createCommVoteDialog;

CNC_arr_commanderCandidates = [];

/*
_handle = [] spawn {
    while {!isNull (findDisplay 1500)} do {
        _commanderCandidateRow = lbCurSel 124;
        _commanderCandidateRow ???
    };
};
*/