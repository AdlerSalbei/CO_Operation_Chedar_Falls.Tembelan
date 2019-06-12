[{
    params ["", "_handel"];

    private _slingedObjects = 0;

    {
        if !(isNull (getSlingLoad _x)) then {
            _slingedObjects = _slingedObjects +1;
        };
    }forEach [heloVehicle_1, heloVehicle_2, heloVehicle_3, heloVehicle_4];

    if (_slingedObjects >= 4) exitWith {[_handel] call CBA_fnc_removePerFrameHandler;};

    {
        if !(velocity _x isEqualTo [0,0,0]) then {
            _x setVelocity [0, 0, 0];
        };
    }forEach [boat_1, boat_2, boat_3, boat_4];

},0.1,[]] call CBA_fnc_addPerFrameHandler;


[{
    heloVehicle_1 setFuel 1;

    private _pos = getPosASL boat_1;
    private _wayPoint0 = helo_1 addWaypoint [_pos, 0];
    _wayPoint0 setWaypointPosition [_pos, 0];
    _wayPoint0 waypointAttachVehicle boat_1;
    _wayPoint0 setWaypointType "HOOK";

    [{
        params ["_wp"];

        if ((waypointType _wp) != "HOOK") then {
            _wp setWaypointType "HOOK";
        }else{
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    }, 1, _wayPoint0] call CBA_fnc_addPerFrameHandler;

    [
        {!(isNull (getSlingLoad heloVehicle_1))},
        {
            private _pos = getPosASL dropPos_1;
            private _wayPoint1 = helo_1 addWaypoint [_pos, 0];
            _wayPoint1 setWaypointPosition [_pos, 0];
            _wayPoint1 setWaypointType "UNHOOK";

            helo_1 setSpeedMode "FULL";
            heloVehicle_1 flyInHeightASL [30, 30, 100];

            [
                {(isNull (getSlingLoad heloVehicle_1))},
                {
                    private _pos = getPosASL camTarget_07;
                    private _wayPoint1 = helo_1 addWaypoint [_pos, 0];
                    _wayPoint1 setWaypointPosition [_pos, 0];
                },
                []
            ] call CBA_fnc_waitUntilAndExecute;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
}, [], 5] call CBA_fnc_waitAndExecute;

[{
    heloVehicle_2 setFuel 1;

    private _pos = getPosASL boat_2;
    private _wayPoint0 = helo_2 addWaypoint [_pos, 0];
    _wayPoint0 setWaypointPosition [_pos, 0];
    _wayPoint0 waypointAttachVehicle boat_2;
    _wayPoint0 setWaypointType "HOOK";

    [{
        params ["_wp"];

        if ((waypointType _wp) != "HOOK") then {
            _wp setWaypointType "HOOK";
        }else{
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    }, 1, _wayPoint0] call CBA_fnc_addPerFrameHandler;

    [
        {!(isNull (getSlingLoad heloVehicle_2))},
        {
            private _pos = getPosASL dropPos_2;
            private _wayPoint1 = helo_2 addWaypoint [_pos, 0];
            _wayPoint1 setWaypointPosition [_pos, 0];
            _wayPoint1 setWaypointType "UNHOOK";

            helo_2 setSpeedMode "FULL";
            heloVehicle_2 flyInHeightASL [30, 30, 100];

            [
                {(isNull (getSlingLoad heloVehicle_2))},
                {
                    private _pos = getPosASL camTarget_07;
                    private _wayPoint1 = helo_2 addWaypoint [_pos, 0];
                    _wayPoint1 setWaypointPosition [_pos, 0];
                },
                []
            ] call CBA_fnc_waitUntilAndExecute;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
}, [], 15] call CBA_fnc_waitAndExecute;

[{
    heloVehicle_3 setFuel 1;

    private _pos = getPosASL boat_3;
    private _wayPoint0 = helo_3 addWaypoint [_pos, 0];
    _wayPoint0 setWaypointPosition [_pos, 0];
    _wayPoint0 waypointAttachVehicle boat_3;
    _wayPoint0 setWaypointType "HOOK";

    [{
        params ["_wp"];

        if ((waypointType _wp) != "HOOK") then {
            _wp setWaypointType "HOOK";
        }else{
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    }, 1, _wayPoint0] call CBA_fnc_addPerFrameHandler;

    [
        {!(isNull (getSlingLoad heloVehicle_3))},
        {
            private _pos = getPosASL dropPos_3;
            private _wayPoint1 = helo_3 addWaypoint [_pos, 0];
            _wayPoint1 setWaypointPosition [_pos, 0];
            _wayPoint1 setWaypointType "UNHOOK";

            helo_3 setSpeedMode "FULL";
            heloVehicle_3 flyInHeightASL [30, 30, 100];

            [
                {(isNull (getSlingLoad heloVehicle_3))},
                {
                    private _pos = getPosASL camTarget_07;
                    private _wayPoint1 = helo_3 addWaypoint [_pos, 0];
                    _wayPoint1 setWaypointPosition [_pos, 0];
                },
                []
            ] call CBA_fnc_waitUntilAndExecute;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
}, [], 25] call CBA_fnc_waitAndExecute;

[{
    heloVehicle_4 setFuel 1;

    private _pos = getPosASL boat_4;
    private _wayPoint0 = helo_4 addWaypoint [_pos, 0];
    _wayPoint0 setWaypointPosition [_pos, 0];
    _wayPoint0 waypointAttachVehicle boat_4;
    _wayPoint0 setWaypointType "HOOK";

    [{
        params ["_wp"];

        if ((waypointType _wp) != "HOOK") then {
            _wp setWaypointType "HOOK";
        }else{
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    }, 1, _wayPoint0] call CBA_fnc_addPerFrameHandler;

    [
        {!(isNull (getSlingLoad heloVehicle_4))},
        {
            private _pos = getPosASL dropPos_4;
            private _wayPoint1 = helo_4 addWaypoint [_pos, 0];
            _wayPoint1 setWaypointPosition [_pos, 0];
            _wayPoint1 setWaypointType "UNHOOK";

            helo_4 setSpeedMode "FULL";
            heloVehicle_4 flyInHeightASL [30, 30, 100];

            [
                {(isNull (getSlingLoad heloVehicle_4))},
                {
                    private _pos = getPosASL camTarget_07;
                    private _wayPoint1 = helo_4 addWaypoint [_pos, 0];
                    _wayPoint1 setWaypointPosition [_pos, 0];
                },
                []
            ] call CBA_fnc_waitUntilAndExecute;
        },
        []
    ] call CBA_fnc_waitUntilAndExecute;
}, [], 35] call CBA_fnc_waitAndExecute;
