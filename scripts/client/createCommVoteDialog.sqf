/*
	author: Net_2
	description: none
	returns: nothing
*/

sleep 10;

_dialogOpenedSuccessfully = createDialog "CommVoteTest";

if !(_dialogOpenedSuccessfully) then {
    hint "Wituix män!";
}