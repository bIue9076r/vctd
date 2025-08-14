World.Dialogue[French] = {}

World.Dialogue[French][0] = Dialogue.new({
	Text.new("Ils sont ne dire pas trop.",Varisa),
	Text.new("Leur dialogue pourrait être détruite.",Varisa),
},0)

World.Dialogue[French][1] = Dialogue.new({
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

World.Dialogue[French][2] = Dialogue.new({
	Text.new("Bonjour Mademoiselle Drew",Varisa),
	Text.new("Salut Varisa",Zoey),
	Text.new("Est ce que ta mère est encore ici?",Zoey),
	Text.new("Non, Je n'ai pas elle vu",Varisa),
	Text.new("Ce n'est pas comme elle",Zoey),
	Text.new("J'éspere elle est bien",Zoey),
	Text.new("ouais...",Varisa),
	Text.new("....",Zoey),
},1)

World.Dialogue[French][3] = Dialogue.new({
	Text.new("Attention!",TV_B),
	Text.new("5 morts en relation à tueur",TV_B),
	Text.new("Les officials demander...",TV_B),
	Text.new("Sont-ils un sataniste?",TV_B),
	Text.new("*Charabia Random*",TV_B),
},1)

World.Dialogue[French][4] = Dialogue.new({
	Text.new("Tout le monde....",TV_B),
	Text.new("Rien des tout a en train.",TV_B),
	Text.new("*Charabia Random*",TV_B),
},1)

World.Dialogue[French][5] = Dialogue.new({
	Text.new("Salut Var!",Rachel),
	Text.new("Salut",Varisa),
	Text.new("Tu penses que tu peux visiter ma maison?",Rachel),
	Text.new("Ouais, Je peux visiter.",Varisa),
	Text.new("Super.",Rachel),
	Text.new("J'ai besoin que tu demandes la boîte à outils à ma mère.",Rachel),
	Text.new("Ouais.",Varisa),
	Text.new("Tu l'as?",Rachel,nil,function()
		Story.set("Toolbox_Wilkie_1",true)
	end),
	Text.new("Tu l'as?",Rachel),
},1)

require("/dialogue/French/general/mailboxes")

World.Dialogue[French][18] = Dialogue.new({
	Text.new("Bonjour Varisa.",Wilkie),
	Text.new("Salut.",Varisa),
	Text.new("What brings you over here today?",Wilkie),
	Text.new("Mme. Fisher a dit que vous avez sa boîte à outils.",Varisa),
	Text.new("Elle en a besoin?",Wilkie),
	Text.new("Non non non.",Varisa),
	Text.new("Je juste as besoin de quelques chose de lui.",Varisa),
	Text.new("Ah, Ouais.",Wilkie),
	Text.new("De quoi as-tu besoin alors?",Wilkie),
	Text.new("Euhh....",Varisa),
	Text.new("Peux-je revenir à toi?",Varisa),
	Text.new("Ouais, prend ton temps",Wilkie,nil,function()
		-- Change Rachel's Dialogue Number
		print("Look, i'm doing something but in french")
		Story.set("Toolbox_Wilkie_2",true)
	end),
	Text.new("Ouais, prend ton temps",Wilkie),
},1)

-- Todo: Story Flow chart / Dialogue but in French
World.Dialogue[French][19] = Dialogue.new({
	Text.new("Salut Varisa.",Karina),
},1)

World.Dialogue[French][20] = Dialogue.new({
	Text.new("Salut Varisa.",Zach),
},1)

World.Dialogue[French][21] = Dialogue.new({
	Text.new("C'est à été jours.",Jami),
	Text.new("Je ne peux plus prendre ça.",Jami),
	Text.new("Pourquoi?",Varisa),
	Text.new("Ce sont pas tes affaires.",Jami),
	Text.new("Ça va. je suppose...",Varisa),
	Text.new("Cependant, avez-vous voir Zoey par ici?",Varisa),
	Text.new("Elle est absent toujours?",Jami),
	Text.new("Et toujours pas d'indices?",Jami),
	Text.new("ouais...",Varisa),
	Text.new("Es-tu dans sa testament?",Jami),
	Text.new("Quoi?",Varisa),
	Text.new("Qu'est-ce qui va pas chez toi putain?!",Varisa),
	Text.new("Désolé",Jami),
	Text.new("Je voir que été un peu d'insensible",Jami),
	Text.new("Vous pensez?",Varisa),
	Text.new("Ici, prends ça.",Jami,nil,function()
		Story.set("Screw_Drive_Jami",true)
	end),
	Text.new("Toutes mes excuses encore.",Jami),
},1)

World.Dialogue[French][22] = Dialogue.new({
	Text.new("Salut Varisa.",Mollie),
},1)

World.Dialogue[French][23] = Dialogue.new({
	Text.new("Salut Varisa.",Lassie),
	Text.new("Salut.",Varisa),
	Text.new("Sais-tu où est la boîte à outils?",Varisa),
	Text.new("I think i gave it to Wilkie a few days ago...",Lassie),
	Text.new("Oh.",Varisa),
	Text.new("Ouais, desolé.",Lassie),
	Text.new("Il devrait toujours l'avoir.",Lassie),
},1)

World.Dialogue[French][24] = Dialogue.new({
	Text.new("Salut Varisa.",Fredrick),
},1)

World.Dialogue[French][25] = Dialogue.new({
	Text.new("Salut Varisa.",Vivian),
},1)

World.Dialogue[French][26] = Dialogue.new({
	Text.new("Salut Varisa.",Sean),
},1)

World.Dialogue[French][27] = Dialogue.new({
	Text.new("Salut Varisa.",Ella),
},1)

World.Dialogue[French][28] = Dialogue.new({
	Text.new("Salut Varisa.",Brian),
},1)

World.Dialogue[French][29] = Dialogue.new({
	Text.new("Did you get the toolbox?",Rachel),
	Text.new("Wilkie's still using it.",Varisa),
	Text.new("But he'll let us borrow the tool you need.",Varisa),
	Text.new("Okay.",Rachel),
	Text.new("Ask him for the screwdriver.",Rachel),
	Text.new("Or better yet, take my guitar.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("You're the one thats gonna fix it anyway.",Rachel),
	Text.new("I'm counting on you.",Rachel),
},1)

World.Dialogue[French][30] = Dialogue.new({
	Text.new("Did you get the toolbox?",Rachel),
	Text.new("No but our old math teacher gave me this.",Varisa),
	Text.new("No way!",Rachel),
	Text.new("That's exactly what I need!",Rachel),
	Text.new("Well, that works I guess.",Varisa),
	Text.new("Here, take my guitar.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Now you can fix it.",Rachel),
	Text.new("I'm counting on you.",Rachel),
},1)

World.Dialogue[French][31] = Dialogue.new({
	Text.new("Did you get the toolbox?",Rachel),
	Text.new("Wilkie's still using it.",Varisa),
	Text.new("But he'll let us borrow the tool you need.",Varisa),
	Text.new("Okay.",Rachel),
	Text.new("Ask him for the screwdriver.",Rachel),
	Text.new("Screwdriver?",Varisa),
	Text.new("Yeah?",Varisa),
	Text.new("Look what our old math teacher gave me.",Varisa),
	Text.new("No way!",Rachel),
	Text.new("That's exactly what I need!",Rachel),
	Text.new("Well, that works I guess.",Varisa),
	Text.new("Here, take my guitar.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Now you can fix it.",Rachel),
	Text.new("I'm counting on you.",Rachel),
},1)

World.Dialogue[French][32] = Dialogue.new({
	Text.new("Hi Var!",Rachel),
	Text.new("Hey",Varisa),
	Text.new("You think you could stop by my house?",Rachel),
	Text.new("Yeah, I could stop by.",Varisa),
	Text.new("Great.",Rachel),
	Text.new("I need you to ask my mom for the toolbox.",Rachel),
	Text.new("Wait, what do you need from it?",Varisa),
	Text.new("A screwdriver?",Rachel),
	Text.new("Look what our old math teacher gave me.",Varisa),
	Text.new("No way!",Rachel),
	Text.new("That's exactly what I need!",Rachel),
	Text.new("Well, that works I guess.",Varisa),
	Text.new("Here, take my guitar.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Now you can fix it.",Rachel),
	Text.new("I'm counting on you.",Rachel),
},1)
