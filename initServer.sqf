["Initialize"] call BIS_fnc_dynamicGroups;

[
    {!(isNil "grad_user_openWelldeck")},
    {
        introVehicle_1 setFuel 1;
        private _lhdPart = nearestObjects [getPos lhd_1, ["ATLAS_LHD_7"], 200] select 0;

        _lhdPart animate ["door_welldeck", 1];
        _lhdPart animate ["door_welldeck_2", 1];
        _lhdPart animate ["door_welldeck_3", 1];

        [
            {
                _this animate ["door_welldeck", 0];
                _this animate ["door_welldeck_2", 0];
                _this animate ["door_welldeck_3", 0];
            },
            _lhdPart,
            90
        ] call CBA_fnc_waitAndExecute;
    },
    []
] call CBA_fnc_waitUntilAndExecute;
