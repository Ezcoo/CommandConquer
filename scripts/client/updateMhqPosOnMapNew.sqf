_currentMhq = tempMhqPos;
_currentComm = player;

while {true} do {
    _currentVehicle = vehicle player;

    if ((_currentVehicle != player) && (_currentVehicle isKindOf "LandVehicle")) then {
        _currentMhq = _currentVehicle;
    };

    if (_currentMhq distance _currentComm > 500) then {
        _currentMhq = tempMhqPos;
    };

    [_currentMhq, _currentComm] call CNC_fnc_updateMhqPosOnMap;

    sleep 0.25;
};