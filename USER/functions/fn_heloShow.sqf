private _time = 0;

{
    [{_this setFuel 1;}, _x, _time] call CBA_fnc_waitAndExecute;
    _time = _time + 3;
} forEach [
    showHelo_21,
    showHelo_19,
    showHelo_20,
    showHelo_18,
    showHelo_13,
    showHelo_12,
    showHelo_15,
    showHelo_14,
    showHelo_11,
    showHelo_10,
    showHelo_04,
    showHelo_03,
    showHelo_09,
    showHelo_08,
    showHelo_07,
    showHelo_06,
    showHelo_05
];
