{
    _location = _x select 2;

    _locationMarker = createMarkerLocal [format ["%1", _x select 1], _location];
    _locationMarker setMarkerTypeLocal "hd_objective";
    _locationMarker setMarkerColorLocal "ColorBlack";
    _locationMarker setMarkerTextLocal format ["%1", _x select 1];

} forEach CNC_cfg_locations;