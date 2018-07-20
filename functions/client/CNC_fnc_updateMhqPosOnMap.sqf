CNC_FNC_UpdateMhqPosOnMap = {

    params ["_currentMhq", "_currentComm"];

    deleteMarkerLocal "mhqCurrentPos";

    if (_currentMhq isEqualTo objNull) exitWith {};

    _mhqPos = getPos _currentMhq;
    _mhqCurrentPosMarker = createMarkerLocal ["mhqCurrentPos", _mhqPos];
    _mhqCurrentPosMarker setMarkerShapeLocal "ICON";
    _mhqCurrentPosMarker setMarkerTypeLocal "b_hq";

    if (getDammage _currentMhq == 1) then {
        _mhqCurrentPosMarker setMarkerColorLocal "ColorRed";
        _mhqCurrentPosMarker setMarkerTextLocal format ["MHQ - DESTROYED"];
        if (true) exitWith {};
    };

    if (speed _currentMhq > 2) then {
        _mhqCurrentPosMarker setMarkerColorLocal "ColorBlack";
        if (vehicle _currentComm == _currentMhq) then {
            _mhqCurrentPosMarker setMarkerTextLocal format ["MHQ - Moving - %1", name player];
        } else {
            _mhqCurrentPosMarker setMarkerTextLocal format ["MHQ - Moving"];
        };
    } else {
        _mhqCurrentPosMarker setMarkerColorLocal "ColorYellow";

        if (vehicle _currentComm == _currentMhq) then {
            _mhqCurrentPosMarker setMarkerTextLocal format["MHQ - %1", name player];
        } else {
            _mhqCurrentPosMarker setMarkerTextLocal format ["MHQ"];
        };
    };

};