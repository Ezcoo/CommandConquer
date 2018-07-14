_currentComm = player;

while {true} do {
    _currentComm call CNC_fnc_updateCommPosOnMap;

    sleep 0.25;
};