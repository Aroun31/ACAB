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
    *           fn_showInfo.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

	disableSerialization;

	_this params[
	    ["_DA3F_Ctrl",controlNull,[controlNull]],
		["_DA3F_index",-1,[0]]
	];
			if (_DA3F_index isEqualTo -1) exitWith {};
		private _DA3F_Display 	= findDisplay 1060518;
		private _DA3F_CtrlTxt 	= _DA3F_Display displayCtrl 1100;
		private _DA3F_Unit 		= call compile format ["%1",_DA3F_Ctrl lbData _DA3F_index];

			if (isNull _DA3F_Unit) exitWith {
				_DA3F_CtrlTxt ctrlSetStructuredText parseText format ["Aucune information trouvé", nil];
			};

		private _DA3F_Distance 	= round(player distance _DA3F_Unit);
		_DA3F_CtrlTxt ctrlSetStructuredText parseText format ["La cible sélectionné est à une distance de : %1m", _DA3F_Distance];