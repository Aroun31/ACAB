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
    *           fn_init_gui.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

/*
	if !(player getVariable ["DA3F_ACAB",false]) exitWith {
		hint parseText format ["<t color='#31400'>Aucune bombe posé<t/>", nil];
	};
*/

	if !(createDialog "DA3F_Gui_ACAB") exitWith {};

	disableSerialization;
		private _DA3F_Display 	= findDisplay 1060518;
		private _DA3F_CtrlList 	= _DA3F_Display displayCtrl 1500;

		private _DA3F_ListUnits = [];
		private _DA3F_Infos 	= "";

		_DA3F_ListUnits = (nearestObjects [player,["Man"],6])-[player];

		if (str _DA3F_ListUnits isEqualTo "[]") then [{
			_DA3F_CtrlList lbAdd format ["Aucune présence détecté", nil];
			_DA3F_CtrlList lbSetData [(lbSize _DA3F_CtrlList)-1,str(objNull)];
		},{
			{
				_DA3F_CtrlList lbAdd format ["personne proche n°%1", (_foreachindex + 1)];
				_DA3F_CtrlList lbSetData [(lbSize _DA3F_CtrlList)-1,str(_x)];
			} forEach _DA3F_ListUnits;
	}];

	if (player getVariable ["DA3F_ACAB",false]) then {
		_DA3F_CtrlList ctrlShow false;
		//hint parseText format ["<t color='#31400'>Aucune bombe posé<t/>", nil];
		[]spawn DA3F_fnc_CamCible;
	};