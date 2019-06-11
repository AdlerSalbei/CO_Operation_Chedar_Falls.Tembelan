params ["_effect", "_music"];
[_effect, 0, false] call BIS_fnc_setPPeffectTemplate;

playMusic [_music, 3];

cutText ["", "BLACK IN", 8];

[ace_player, "amovpercmstpslowwrfldnon"] remoteExec ["switchMove", 0];

private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
_filmgrain ppEffectEnable true;
_filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
_filmgrain ppEffectCommit 0;

private _camera = "camera" camCreate (getPosASL camPos_01);
_camera camSetPos (getPosASL camPos_01);
_camera camCommand "inertia on";
_camera camSetTarget camTarget_03;
_camera cameraEffect ["internal", "back"];
_camera camSetFov 1;
_camera camCommit 0;
_camera camSetPos (getPosASL camPos_01);
_camera camSetTarget camTarget_03;
_camera camCommit 5;

[{
    params ["_camera"];
    _camera camSetTarget camTarget_04;
    _camera camCommit 3;

    [{
        params ["_camera"];
        _camera camSetTarget camTarget_05;
        _camera camCommit 3;

        [{
            params ["_camera"];
            _camera camSetTarget camTarget_06;
            _camera camCommit 3;

            [{
                params ["_camera"];
                _camera camSetTarget camTarget_07;
                _camera camCommit 3;

                [{
                    params ["_camera"];
                    _camera camSetPos (getPosASL camPos_02);
                    _camera camSetTarget camTarget_01;
                    _camera camCommit 5;

                    [{
                        params ["_camera"];

                        ["Default", 15, false] call BIS_fnc_setPPeffectTemplate;

                        [{
                            params ["_camera"];
                            _camera camSetPos (getPosASL camPos_04);
                            _camera camSetTarget camTarget_02;
                            _camera camCommit 5;

                            [{
                                params ["_camera"];
                                _camera camSetPos (getPosASL camPos_05);
                                _camera camCommit 5;

                                [{
                                    params ["_camera"];
                                    _camera camSetPos (getPosASL camPos_06);
                                    _camera camSetTarget ace_player;
                                    _camera camCommit 3;

                                    [{
                                        params ["_camera"];
                                        private _pos = getPosASL ace_player;
                                        _pos set [2, (_pos select 2) + 1.7];
                                        _camera camSetPos _pos;
                                        _camera camCommit 5;

                                        [{
                                            cutText ["", "BLACK OUT", 1];

                                            [{
                                                params ["_camera", "_filmgrain"];
                                                _filmgrain ppEffectEnable false;
                                                ppEffectDestroy _filmgrain;
                                                _camera cameraEffect ["terminate", "back"];
                                                camDestroy _camera;

                                                [{
                                                    cutText ["", "BLACK IN", 1];

                                                    cutText ["","BLACK FADED",999];

                                                    [{
                                                        cutText ["", "BLACK IN", 10];

                                                        [{
                                                            6 fadeMusic 0;

                                                            STHud_UIMode = 1;
                                                            [ace_player, "amovpercmstpslowwrfldnon", 1] call ace_common_fnc_doAnimation;

                                                            [{
                                                                playMusic "";
                                                                0 fadeMusic 1;
                                                            }, [], 6.01] call CBA_fnc_waitAndExecute;
                                                        }, [], 3] call CBA_fnc_waitAndExecute;
                                                    }, [], 2] call CBA_fnc_waitAndExecute;
                                                }, [], 1] call CBA_fnc_waitAndExecute;
                                            }, _this, 1] call CBA_fnc_waitAndExecute;
                                        }, _this, 3] call CBA_fnc_waitAndExecute;
                                    }, _this, 2.9] call CBA_fnc_waitAndExecute;
                                }, _this, 4.9] call CBA_fnc_waitAndExecute;
                            }, _this, 4.5] call CBA_fnc_waitAndExecute;
                        }, _this, 3.5] call CBA_fnc_waitAndExecute;
                    }, _this, 2] call CBA_fnc_waitAndExecute;
                }, _this, 2.99] call CBA_fnc_waitAndExecute;
            }, _this, 2.99] call CBA_fnc_waitAndExecute;
        }, _this, 2.99] call CBA_fnc_waitAndExecute;
    }, _this, 2.99] call CBA_fnc_waitAndExecute;
}, [_camera, _filmgrain], 2.99] call CBA_fnc_waitAndExecute;
