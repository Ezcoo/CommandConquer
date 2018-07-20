CNC_FNC_LogContent = {

params ["_logType", "_logContent", "_logLevel"];

if (isNull _logLevel) then {
    _logLevel = 0;
}

if (_logLevel >= CNC_LogLevel) then {
    diag_log format ["[CNC (%1)] [frame: %2 | ticktime: %3 | fps: %4] %5", _logType, diag_frameno, diag_tickTime, diag_fps, _logContent];
};

};