params ["_effect", "_music"];
[_effect, 0, false] call BIS_fnc_setPPeffectTemplate;

playMusic [_music, 0];

cutText ["", "BLACK IN", 8];

ace_player switchMove "amovpercmstpslowwrfldnon";

private _camera = "camera" camCreate (getPosASL camPos_01);
_camera camSetPos (getPos camPos_10);
_camera camCommand "inertia on";
_camera camSetTarget camTarget_08;
_camera cameraEffect ["internal", "back"];
_camera camSetFov 1;
_camera camCommit 0;
_camera camSetPos (getPos camPos_10);
_camera camSetTarget introVehicle_1;
_camera camCommit 5;

showCinemaBorder false;

[
	parseText "<t size='4'>Tembelan mobilisiert seine Kräfte</t>",
	parseText "     -  Es gibt keinen logischen Grund warum das Alphabet sortiert ist wie es ist.  -  Führende Wissenschaftler sagen Ody Korn sei kein Getränk, sondern ein Reinigungsmittel  -  Trump bietet jedem kostenlose One-Way-Tickets nach Afrika und Mexiko an, der Amerika verlassen will  -  Afrikanischer Milliardär zahlt jedem 1 Million US-Dollar an jeden, der Afrika verlassen will, um nach Amerika zu gehen"
] spawn BIS_fnc_AAN;

[{
    params ["_camera"];
    _camera camSetPos (getPos camPos_11);
    _camera camCommit 5;

    [{
        params ["_camera", "_filmgrain"];
        _filmgrain ppEffectEnable false;
        ppEffectDestroy _filmgrain;
        _camera cameraEffect ["terminate", "back"];
        camDestroy _camera;
        (uiNamespace getVariable "BIS_AAN") closeDisplay 1;

        cutText ["", "BLACK IN", 1];

        cutText ["","BLACK FADED", 999];

        [{
            cutText ["", "BLACK IN", 8];

            private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
            _filmgrain ppEffectEnable true;
            _filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
            _filmgrain ppEffectCommit 0;

            private _camera = "camera" camCreate (getPosASL camPos_01);
            _camera camSetPos (getPos camPos_01);
            _camera camCommand "inertia on";
            _camera camSetTarget camTarget_03;
            _camera cameraEffect ["internal", "back"];
            _camera camSetFov 1;
            _camera camCommit 0;
            _camera camSetPos (getPos camPos_01);
            _camera camSetTarget camTarget_03;
            _camera camCommit 5;

            showCinemaBorder true;


            [{
                params ["_camera"];
                _camera camSetTarget camTarget_04;
                _camera camCommit 3;

                [{
                    params ["_camera"];
                    _camera camSetPos (getPosASL camPos_07);
                    _camera camSetTarget camTarget_05;
                    _camera camCommit 5;

                    [{
                        params ["_camera"];
                        _camera camSetTarget camTarget_06;
                        _camera camCommit 2;

                        [{
                            params ["_camera"];

                            _camera camSetPos (getPosASL camPos_08);
                            _camera camCommit 5;

                            [{
                                params ["_camera"];
                                _camera camSetPos (getPosASL camPos_09);
                                _camera camSetTarget camTarget_07;
                                _camera camCommit 5;

                                [{
                                    params ["_camera"];
                                    _camera camSetTarget camTarget_01;
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

                                                                        cutText ["","BLACK FADED", 999];

                                                                        [{
                                                                            cutText ["", "BLACK IN", 10];

                                                                            [{
                                                                                6 fadeMusic 0;

                                                                                STHud_UIMode = 1;
                                                                                diwako_dui_main_toggled_off = false;
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
                                    }, _this, 2.9] call CBA_fnc_waitAndExecute;
                                }, _this, 7] call CBA_fnc_waitAndExecute;
                            }, _this, 3.9] call CBA_fnc_waitAndExecute;
                        }, _this, 1.8] call CBA_fnc_waitAndExecute;
                    }, _this, 7] call CBA_fnc_waitAndExecute;
                }, _this, 2.9] call CBA_fnc_waitAndExecute;
            }, [_camera, _filmgrain], 4] call CBA_fnc_waitAndExecute;
        }, [], 2] call CBA_fnc_waitAndExecute;
    }, _this, 16] call CBA_fnc_waitAndExecute;
}, [_camera], 6] call CBA_fnc_waitAndExecute;
