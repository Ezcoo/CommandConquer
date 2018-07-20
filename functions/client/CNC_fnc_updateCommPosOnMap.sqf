    params ["_currentComm"];

    deleteMarkerLocal "commCurrentPos";

    if ((_currentComm == objNull) || (vehicle player != player)) exitWith {};

    _commPos = getPos _currentComm;
    _commCurrentPosMarker = createMarkerLocal ["commCurrentPos", _commPos];
    _commCurrentPosMarker setMarkerShapeLocal "ICON";
    _commCurrentPosMarker setMarkerTypeLocal "mil_dot";

    if (vehicle player == player) then {
        _commCurrentPosMarker setMarkerColorLocal "ColorKhaki";
        _commCurrentPosMarker setMarkerTextLocal format ["Commander - %1", name player];
    };