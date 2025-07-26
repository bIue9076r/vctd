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
	Text.new("Salut Var!",Rachel),
	Text.new("Salut",Varisa),
	Text.new("You think you could stop by my house?",Rachel),
	Text.new("Yeah, I could stop by.",Varisa),
	Text.new("Great.",Rachel),
	Text.new("I need you to ask my mom for the toolbox.",Rachel),
	Text.new("Alright.",Varisa),
	Text.new("You got it?",Rachel),
},1)

require("/npcs/French/general/mailboxes")

World.Dialoge[French][18] = Dialoge.new({
	Text.new("Bonjour Varisa.",Wilkie),
	Text.new("Salut.",Varisa),
	Text.new("J'ai pense que tu as finir volontariat?",Wilkie),
	Text.new("Pas jour.",Varisa),
},1)

World.Dialoge[French][19] = Dialoge.new({
	Text.new("Salut Varisa.",Karina),
},1)

World.Dialoge[French][20] = Dialoge.new({
	Text.new("Salut Varisa.",Zach),
},1)

World.Dialoge[French][21] = Dialoge.new({
	Text.new("C'est à été jours.",Jami),
	Text.new("Je ne peux plus prendre ça.",Jami),
	Text.new("Pourqoui?",Varisa),
	Text.new("Ce sont pas tes affaires.",Jami),
	Text.new("Ça va. je suppose...",Varisa),
	Text.new("Cependant, avez-vous voir Zoey par ici?",Varisa),
	Text.new("Elle est absent toujours?",Jami),
	Text.new("Et toujours pas d'indices?",Jami),
	Text.new("ouais...",Varisa),
	Text.new("Es-tu dans sa testament?",Jami),
	Text.new("Qu'est-ce qui va pas chez toi putain?!",Varisa),
	Text.new("Désolé",Jami),
	Text.new("Je voir que été un peu d'insensible",Jami),
	Text.new("Vous pensez?",Varisa),
	Text.new("Ici, prends ça.",Jami),
	Text.new("Toutes mes excuses encore.",Jami),
},1)

World.Dialoge[French][22] = Dialoge.new({
	Text.new("Salut Varisa.",Mollie),
},1)

World.Dialoge[French][23] = Dialoge.new({
	Text.new("Salut Varisa.",Lassie),
},1)

World.Dialoge[French][24] = Dialoge.new({
	Text.new("Salut Varisa.",Fredrick),
},1)

World.Dialoge[French][25] = Dialoge.new({
	Text.new("Salut Varisa.",Vivian),
},1)

World.Dialoge[French][26] = Dialoge.new({
	Text.new("Salut Varisa.",Sean),
},1)

World.Dialoge[French][27] = Dialoge.new({
	Text.new("Salut Varisa.",Ella),
},1)

World.Dialoge[French][28] = Dialoge.new({
	Text.new("Salut Varisa.",Brian),
},1)