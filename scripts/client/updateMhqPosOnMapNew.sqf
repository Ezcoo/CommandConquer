_currentMhq = tempMhqPos;
_currentComm = player;

while {true} do {
    _currentVehicle = vehicle player;

    if ((vehicle player != player) && (vehicle player isKindOf "LandVehicle")) then {
        _currentMhq = _currentVehicle;
    };

    [_currentMhq, _currentComm] call CNC_fnc_updateMhqPosOnMap;

    sleep 0.25;
};