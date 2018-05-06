	/*
    *
    *       Project :
    *               Projet Alice
    *
    *       Team   :
    *               Dev'Arma 3 France / http://devarma3france.fr/
    *
    *       Author  :
    *               [DA3F] Aroun Le BriCodeur
    *
    *       File :
    *           fn_boomLeFlic.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

	private _DA3F_Info = player getVariable ["DA3F_PoseInfo",[]];

		if (str _DA3F_Info isEqualTo "[]") exitWith {};

			_DA3F_Info params[
			    ["_DA3F_Bombe",objNull,[objNull]],
				["_DA3F_Flic",objNull,[objNull]]
			];

	_DA3F_Bombe setDamage 1;

	hint parseText format ["<t color='#31400' >L'agent :<br/>%1<br/>vient de péter comme une merde...<br/>Il ne fallait pas avoir un métier de pute !</t>", name _DA3F_Flic];

		player setVariable ["DA3F_PoseInfo",[],false];
		player setVariable ["DA3F_ACAB",false,true];
		_DA3F_Flic setVariable ["DA3F_FlicToy",false,true];
		if !(isNil "DA3F_Cam_Flic") then {
			deleteVehicle DA3F_Cam_Flic;
		};