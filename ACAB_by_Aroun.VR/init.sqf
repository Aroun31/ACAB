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
    *           init.sqf
    *
    *       DESCRIPTION :
    *               Suite à une amande IRL qui m'a été mise pour mon chien que je ne tenais pas en laisse,
    *				je précise que c'est à 100m de la porte de chez moi.
    *				Bref, j'ai eu comme une certaine haine en vers la police qui est (re)monté.
    *				Et ma connerie ma poussé à faire ce script qui fait boum sur les west :D
	*
	*				Si tu utilise mon travail et que tu compatis,
	*				peut-être peux-tu participer à cette amande.
	*				peu importe la hauteur de la contribution elle sera forcément la bienvenue ;)
	*
    *       ARGUMENTS :
    *               -------------
    *       EXEMPLES :
    *               -------------
    *
	*/

		if (playerSide isEqualTo west) then [{
				// west or cops or BASTARD or BITCH or BIG SHIT !
				player setVariable ["DA3F_FlicToy",false,true];
		},{
				// no west or no cops
				player setVariable ["DA3F_ACAB",false,true];
				player setVariable ["DA3F_PoseInfo",[],false];
	}];

	player addAction ["Run DA3F ACAB",DA3F_fnc_init_gui,nil,150,true,false,"","!(isNull _target) && (_this distance _target)< 5"];