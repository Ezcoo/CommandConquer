[missionNamespace, "mhqMarkerUpdate", {
    params ["_currentMhq"];
    _currentMhq call CNC_fnc_updateMhqPosOnMap;
}] call BIS_fnc_addScriptedEventHandler;

currentMhq = objNull;

CNC_mhqEhId = addMissionEventHandler ["EachFrame", {
    _currentVehicle = vehicle player;

    if ((vehicle player != player) && (vehicle player isKindOf "LandVehicle")) then {
        currentMhq = _currentVehicle;
    };

    [missionNamespace, "mhqMarkerUpdate", [currentMhq]] call BIS_fnc_callScriptedEventHandler;
}];