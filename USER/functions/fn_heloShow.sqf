private _time = 5;

{
    [{_this setFuel 1;}, _x, _time] call CBA_fnc_waitAndExecute;
} forEach [
    showHelo_21,
    showHelo_19
];

{
    [{_this setFuel 1;}, _x, _time] call CBA_fnc_waitAndExecute;
    _time = _time + 3;
} forEach [

    showHelo_15,
    showHelo_14,
    showHelo_13,
    showHelo_12,
    showHelo_11,
    showHelo_10,
    showHelo_09,
    showHelo_08,
    showHelo_07,
    showHelo_06,
    showHelo_05, 
    showHelo_04,
    showHelo_03
];

_time = _time + 5;

{
    _time = _time + 3;
    [{_this setFuel 1;}, _x, _time] call CBA_fnc_waitAndExecute;
} forEach [
    showHelo_20,
    showHelo_18
];
