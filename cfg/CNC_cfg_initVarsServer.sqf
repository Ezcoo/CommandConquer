
_arrInitVars = [
"cfg\common\CNC_cfg_commonVars.sqf",
"cfg\common\CNC_cfg_locations.sqf"
];

{
    call compile preprocessFileLineNumbers _x;
} forEach _arrInitVars;