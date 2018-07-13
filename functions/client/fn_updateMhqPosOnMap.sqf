updateMhqPosOnMap = {
    params ["_currentMhq"];

    deleteMarkerLocal "mhqCurrentPos";

    if (_currentMhq isEqualTo objNull) exitWith {};

    _mhqPos = getPos _currentMhq;
    _mhqCurrentPosMarker = createMarkerLocal ["mhqCurrentPos", _mhqPos];
    _mhqCurrentPosMarker setMarkerShapeLocal "ICON";
    _mhqCurrentPosMarker setMarkerTypeLocal "DOT";

    if (speed _currentMhq > 2) then {
        _mhqCurrentPosMarker setMarkerColorLocal "ColorBlack";
        _mhqCurrentPosMarker setMarkerTextLocal "MHQ - Moving";
    };

    _mhqCurrentPosMarker setMarkerColorLocal "ColorYellow";
    _mhqCurrentPosMarker setMarkerTextLocal "MHQ";
};