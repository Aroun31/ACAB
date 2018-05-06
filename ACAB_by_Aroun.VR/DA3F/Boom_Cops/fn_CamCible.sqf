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
    *           fn_CamCible.sqf
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
		private _DA3F_Display 		= findDisplay 1060518;

		private _DA3F_CtrlPix 		= _DA3F_Display displayCtrl 1200;
		private _DA3F_CtrlTxt 		= _DA3F_Display displayCtrl 1100;

		private _DA3F_GetText_Ctrl 	= ctrltext _DA3F_CtrlPix;

		private _DA3F_Info = player getVariable ["DA3F_PoseInfo",[]];

		if (str _DA3F_Info isEqualTo "[]") exitWith {};

			_DA3F_Info params[
			    ["_DA3F_Bombe",objNull,[objNull]],
				["_DA3F_Flic",objNull,[objNull]]
			];

		if !(_DA3F_GetText_Ctrl isEqualTo "#(argb,512,512,1)r2t(CamFlic,1)") then {
			_DA3F_CtrlPix ctrlSetText "#(argb,512,512,1)r2t(CamFlic,1)";
		};

		private _DA3F_PosCamera = _DA3F_Flic modelToWorld [0,2,0];
		if (isNil "DA3F_Cam_Flic") then [{
			_DA3F_CtrlTxt ctrlSetStructuredText parseText format ["<t size='1' >Flic : %1m<t/>",round(_DA3F_Flic distance player)];
			DA3F_Cam_Flic = "camera" camCreate _DA3F_PosCamera;
			DA3F_Cam_Flic camSetPos [(_DA3F_PosCamera select 0),(_DA3F_PosCamera select 1)+2,1.5];
			DA3F_Cam_Flic camSetTarget [((getPos _DA3F_Flic) select 0),((getPos _DA3F_Flic) select 1),1];
			DA3F_Cam_Flic cameraEffect ["INTERNAL", "BACK", "CamFlic"];
			DA3F_Cam_Flic camCommit 0;
		},{
			while {!(isNull _DA3F_Display)} do {
				_DA3F_PosCamera = _DA3F_Flic modelToWorld [0,2,0];

			if !(alive _DA3F_Flic) exitWith {
				closeDialog 0;
			};
			_DA3F_CtrlTxt ctrlSetStructuredText parseText format ["<t size='1' >Flic : %1m<t/>",round(_DA3F_Flic distance player)];
				DA3F_Cam_Flic camSetPos [(_DA3F_PosCamera select 0),(_DA3F_PosCamera select 1)+2,1.5];
				DA3F_Cam_Flic camSetTarget [((getPos _DA3F_Flic) select 0),((getPos _DA3F_Flic) select 1),1];
				DA3F_Cam_Flic camCommit 0;
				sleep 0.2;
			};

	}];