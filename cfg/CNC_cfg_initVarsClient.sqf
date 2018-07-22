
_arrInitVars = [
"cfg\client\CNC_cfg_clientVars.sqf",
"cfg\common\CNC_cfg_commonVars.sqf",
"cfg\common\CNC_cfg_locations.sqf"
];

{
    call compile preprocessFileLineNumbers _x;
} forEach _arrInitVars;