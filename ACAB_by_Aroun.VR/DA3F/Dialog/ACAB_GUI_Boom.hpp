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
    *           ACAB_GUI_Boom.hpp
    *
    *       DESCRIPTION :
    *               -------------
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

class DA3F_Gui_ACAB
{
	idd = 1060518;
	name = "DA3F_Gui_ACAB";
	Author = "@roun";
	class controlsBackground
	{
		class DA3F_Back_1Color: DA3F_BackG
		{
			idc = 1000;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.406875 * safezoneW;
			h = 0.588 * safezoneH;
			colorBackground[] = {1,0.4,0.15,0.7};
		};
		class DA3F_BackG_Intern: DA3F_BackG
		{
			idc = 1001;
			x = 0.303125 * safezoneW + safezoneX;
			y = 0.22 * safezoneH + safezoneY;
			w = 0.39375 * safezoneW;
			h = 0.56 * safezoneH;
			colorBackground[] = {0.15,0.15,0.15,0.9};
		};
		class DA3F_CamCible: DA3F_Pix
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(0.5,0.5,0.5,0.5)";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.282187 * safezoneW;
			h = 0.294 * safezoneH;
		};

		class DA3F_Pix_Logo: DA3F_Pix
		{
			idc = 1201;
			text = "\A3\ui_f\data\GUI\Cfg\Debriefing\endDeath_ca.paa";
			x = 0.605 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.126 * safezoneH;
		};
	};

	class controls
	{
		class DA3F_txt_wait_cam: DA3F_StructuredText
		{
			idc = 1101;
			text = "<t color='#31400' size='2' align='center' >° A.C.A.B °</t>"; //--- ToDo: Localize;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.155 * safezoneH + safezoneY;
			w = 0.406875 * safezoneW;
			h = 0.045 * safezoneH;
			show = true;
		};
		class DA3F_ListPlayer: DA3F_RscListBox
		{
			idc = 1500;
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.234 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.224 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
			onLBSelChanged = "_this call DA3F_fnc_showInfo";
		};
		class DA3F_CtrlGroup: DA3F_Ctrl_Grp
		{
			idc = 2300;
			x = 0.460625 * safezoneW + safezoneX;
			y = 0.234 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.224 * safezoneH;
			class Controls
			{
				class DA3F_Info_Cible: DA3F_StructuredText
				{
					idc = 1100;
					text = "<t color size='1' align='center' >informations en attente...</t>"; //--- ToDo: Localize;
					x = 0.00656246 * safezoneW;
					y = 0.014 * safezoneH;
					w = 0.118125 * safezoneW;
					h = 0.196 * safezoneH;
				};
			};
		};
		class DA3F_Btn_FixeBoom: DA3F_Btn
		{
			idc = 2400;
			text = "Poser"; //--- ToDo: Localize;
			x = 0.605 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.056 * safezoneH;
			tooltip = "Poser la bombe sur la cible"; //--- ToDo: Localize;
			OnButtonClick = "_this call DA3F_fnc_poseC4";
		};
		class DA3F_Btn_deleteBoom: DA3F_Btn
		{
			idc = 2401;
			text = "Annuler"; //--- ToDo: Localize;
			x = 0.605 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.056 * safezoneH;
			tooltip = "Annuler l'explosion"; //--- ToDo: Localize;
			OnButtonClick = "_this call DA3F_fnc_deleteBombe";
		};
		class DA3F_Btn_ValideBoom: DA3F_Btn
		{
			idc = 2402;
			text = "BOOM"; //--- ToDo: Localize;
			x = 0.605 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.056 * safezoneH;
			tooltip = "Faire exploser la bombe"; //--- ToDo: Localize;
			OnButtonClick = "_this call DA3F_fnc_boomLeFlic";
		};
		class DA3F_Btn_Close: DA3F_Btn
		{
			idc = 2403;
			text = "X | Fermer"; //--- ToDo: Localize;
			x = 0.611562 * safezoneW + safezoneX;
			y = 0.234 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
			colorBackground[] = {1,-1,-1,0.8};
			tooltip = "Fermeture du menu"; //--- ToDo: Localize;
			OnButtonClick = "CloseDialog 0";
		};
	};
};