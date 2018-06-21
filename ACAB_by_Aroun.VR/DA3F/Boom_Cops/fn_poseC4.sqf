	/*
    *
    *       Project :
    *               ACAB sys. Scripts Commu
    *
    *       Team   :
    *               Dev'Arma 3 France / http://devarma3france.fr/
    *
    *       Author  :
    *               [DA3F] Aroun Le BriCodeur
    *
    *       File :
    *           fn_poseC4.sqf
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               _this call DA3F_fnc_poseC4;
    *
	*/

		if (player getVariable ["DA3F_ACAB",false]) exitWith {
			hint parseText format ["<t color='#31400' >Tu ne peux pas poser plusieurs bombes<t/>", nil];
		};

		if !("DemoCharge_Remote_Mag" in (magazines player)) exitWith {
			hint parseText format ["<t color='#31400' >Tu ne dispose pas de bombes<t/>", nil];
		};

	disableSerialization;

	private _DA3F_Display 		= findDisplay 1060518;
	private _DA3F_TypeCharge 	= "DemoCharge_Remote_Ammo";
	private _DA3F_Flic			= objNull;
	private _DA3F_CreateBoom 	= objNull;
	private _DA3F_CtrlList 		= _DA3F_Display displayCtrl 1500;
	private _DA3F_IndexList		= lbCurSel _DA3F_CtrlList;

		if (_DA3F_IndexList isEqualTo -1) exitWith {
			hint parseText format ["<t color='#31400' >Sélectionnne une unité<t/>", nil];
		};

	private _DA3F_Flic 			= call compile format ["%1",_DA3F_CtrlList lbData _DA3F_IndexList];

	if !(side _DA3F_Flic isEqualTo west) exitWith {
		hint parseText format ["<t color='#31400' >Tu peux pas faire exploser autre chose qu'un flic !<t/>", nil];
	};

		if (isNull _DA3F_Flic) exitWith {};

		player removeMagazine "DemoCharge_Remote_Ammo";// Only Ammo / remote_mag ne fonctionne plus !!! Oo
		_DA3F_CreateBoom 		= _DA3F_TypeCharge createVehicle [0,0,500];
		_DA3F_CreateBoom attachTo [_DA3F_Flic, [-0.1, 0.1, 0.2], "Pelvis"];
		_DA3F_CreateBoom setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0]];
		player setVariable ["DA3F_PoseInfo",[_DA3F_CreateBoom,_DA3F_Flic],false];
		player setVariable ["DA3F_ACAB",true,true];
		_DA3F_Flic setVariable ["DA3F_FlicToy",true,true];
		hint parseText format ["<t color='#31400' >Bombe posé<t/>", nil];
		closeDialog 0;
