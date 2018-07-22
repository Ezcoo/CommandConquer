params ["_client", "_addOrRemove"];

CNC_FNC_UpdateCommVote = {

_clientIndex = -1;

{
    if (_x select 2 isEqualTo getPlayerUID _client) then {
        _clientIndex = _forEachIndex;
    };
} forEach CNC_arr_commVotePlayerList;

switch (_addOrRemove) do {
    case "add": {
        CNC_arr_commVotePlayerList pushBack [count CNC_arr_commVotePlayerList, name _client, getPlayerUID _client, 0];
        [] remoteExecCall ["CNC_FNC_CreateCommVoteDialog", -2];
        };
    case "remove": {
        CNC_arr_commVotePlayerList deleteAt _clientIndex;
        };
};
["DEBUG", format ["CNC_FNC_InitCommVote: Content of CNC_arr_comVotePlayerList: %1", CNC_arr_commVotePlayerList], 1] call CNC_FNC_LogContent;

publicVariable "CNC_arr_commVotePlayerList";

};