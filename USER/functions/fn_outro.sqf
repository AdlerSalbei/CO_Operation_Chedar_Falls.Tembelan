private _time = 0;

{
   _time = _time + 1;
   [{"Bo_GBU12_LGB" createVehicle ((getPos _this) vectorAdd [0, 0, 1]);},_x,_time] call CBA_fnc_waitAndExecute;
}forEach [
    outro_06
];

 _time = _time + 6;

{
   _time = _time + 2;
   [{"Bo_GBU12_LGB" createVehicle ((getPos _this) vectorAdd [0, 0, 0.5]);},_x,_time] call CBA_fnc_waitAndExecute;
}forEach [
    outro_01,
    outro_02,
    outro_03,
    outro_04,
    outro_05,
    outro_07,
    outro_08,
    outro_09,
    outro_10,
    outro_11,
    outro_12
];

[{
    private _bomb = "BombCluster_02_Ammo_F" createVehicle ((getPos outro_01) vectorAdd [0, 0, 250]);
    _bomb setVelocity [80, -10, 0];
},[],(_time -6)] call CBA_fnc_waitAndExecute;

[{
    private _bomb = "BombCluster_02_Ammo_F" createVehicle ((getPos outro_02) vectorAdd [0, 0, 250]);
    _bomb setVelocity [80, -30, 0];
},[],(_time -5)] call CBA_fnc_waitAndExecute;


[{
    trawler_01 setCenterOfMass (getCenterOfMass trawler_01 vectorAdd [0,0,7]);
    trawler_01 setMass [(getMass trawler_01) + 2000000, 5];
}, [], 1.7] call CBA_fnc_waitAndExecute;

[{ship_01 setDamage 1;},[],15.5] call CBA_fnc_waitAndExecute;
[{ship_02 setDamage 1;},[],15.5] call CBA_fnc_waitAndExecute;
[{ship_03 setDamage 1;},[],17.5] call CBA_fnc_waitAndExecute;
[{ship_04 setDamage 1;},[],19.5] call CBA_fnc_waitAndExecute;

cutText ["", "BLACK IN", 8];

private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
_filmgrain ppEffectEnable true;
_filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
_filmgrain ppEffectCommit 0;

private _camera = "camera" camCreate (getPosASL outroCamPos_01);
_camera camSetPos (getPosASL outroCamPos_01);
_camera camCommand "inertia on";
_camera camSetTarget outroCamTarget_01;
_camera cameraEffect ["internal", "back"];
_camera camSetFov 1;
_camera camCommit 0;
_camera camSetPos (getPos outroCamPos_01);
_camera camSetTarget camTarget_01;
_camera camCommit 5;

showCinemaBorder false;

[{
    params ["_camera"];
    _camera camSetTarget outroCamTarget_02;
    _camera camCommit 3;

    [{
        params ["_camera"];
        _camera camSetPos (getPosASL outroCamPos_04);
        _camera camCommit 3;

        [{
            params ["_camera"];
            _camera camSetTarget outroCamTarget_03;
            _camera camCommit 3;

                [{
                    params ["_camera"];
                    _camera camSetPos (getPosASL outroCamPos_05);
                    _camera camCommit 7;

                    [{
                        params ["_camera", "_filmgrain"];

                        _filmgrain ppEffectEnable false;
                        ppEffectDestroy _filmgrain;
                        _camera cameraEffect ["terminate", "back"];
                        camDestroy _camera;

                    }, _this, 18] call CBA_fnc_waitAndExecute;
                }, _this, 5] call CBA_fnc_waitAndExecute;
        }, _this, 2.9] call CBA_fnc_waitAndExecute;
    }, _this, 2.9] call CBA_fnc_waitAndExecute;
}, [_camera, _filmgrain], 8] call CBA_fnc_waitAndExecute;
