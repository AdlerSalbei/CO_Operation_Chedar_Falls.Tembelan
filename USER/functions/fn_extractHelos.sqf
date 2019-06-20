private _time = 5;

{
    [{_this setFuel 1;}, _x, _time] call CBA_fnc_waitAndExecute;
    _time = _time + 3;
} forEach [
    showHelo_17,
    showHelo_16,
    transportHelo_01,
    transportHelo_02
];
