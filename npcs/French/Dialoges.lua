World.Dialoge[French] = {}

World.Dialoge[French][0] = Dialoge.new({
	Text.new("Ils sont ne dire pas trop.",Varisa),
	Text.new("Leur dialogue pourrait être détruite.",Varisa),
},0)

World.Dialoge[French][1] = Dialoge.new({
	Text.new("Salut",Varisa),
	Text.new("Salut Var!",Tracey),
	Text.new("Est ce que ta mamam a encore des biscits?",Varisa),
	Text.new("Devrait être quelques dans l'interieur",Tracey),
	Text.new("Super!",Varisa),
},0,function()
	World.nextMap(World.Map[2])
	World.AfterEffect = function()
		setPlr(10.5,12.5)
	end
end)

World.Dialoge[French][2] = Dialoge.new({
	Text.new("Bonjour Mademoiselle Drew",Varisa),
	Text.new("Salut Varisa",Zoey),
	Text.new("Est ce que ta mère est encore ici?",Zoey),
	Text.new("Non, Je n'ai pas elle vu",Varisa),
	Text.new("Ce n'est pas comme elle",Zoey),
	Text.new("J'éspere elle est bien",Zoey),
	Text.new("ouais...",Varisa),
	Text.new("....",Zoey),
},1)

World.Dialoge[French][3] = Dialoge.new({
	Text.new("Attention!",TV_B),
	Text.new("5 morts en relation à tueur",TV_B),
	Text.new("Les officials demander...",TV_B),
	Text.new("Sont-ils un sataniste?",TV_B),
	Text.new("*Charabia Random*",TV_B),
},1)

World.Dialoge[French][4] = Dialoge.new({
	Text.new("Tout le monde....",TV_B),
	Text.new("Rien des tout a en train.",TV_B),
	Text.new("*Charabia Random*",TV_B),
},1)

World.Dialoge[French][5] = Dialoge.new({
	Text.new("Salut",Varisa),
	Text.new("Salut Var!",Rachel),
	Text.new("Est ce que mère de Tracey a encore des biscits?",Varisa),
	Text.new("Ouais? Je pense",Rachel),
	Text.new("Super!",Varisa),
},0,function()
	World.nextMap(World.Map[2])
	World.AfterEffect = function()
		setPlr(10.5,12.5)
	end
end)

require("/npcs/French/general/mailboxes")

World.Dialoge[French][18] = Dialoge.new({
	Text.new("Bonjour Varisa.",Wilkie),
	Text.new("Salut.",Varisa),
	Text.new("J'ai pense que tu as finir volontariat?",Wilkie),
	Text.new("Pas jour.",Varisa),
},1)
