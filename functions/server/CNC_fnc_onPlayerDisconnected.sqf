onPlayerDisconnectedHandle = addMissionEventHandler ["PlayerDisconnected",
{
	["DEBUG", format ["Player disconnected: %1", _this]] call CNC_FNC_LogContent;

	if (CNC_var_commVoteOngoing) then {
	    [player, "remove"] call CNC_FNC_UpdateCommVote;
	};
}];