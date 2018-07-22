onPlayerConnectedHandle = addMissionEventHandler ["PlayerConnected",
{
	["DEBUG", format ["Player connected: %1", _this]] call CNC_FNC_LogContent;

	if (CNC_var_commVoteOngoing) then {
	    [player, "add"] call CNC_FNC_UpdateCommVote;

	};
}];