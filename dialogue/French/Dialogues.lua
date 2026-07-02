World.Dialogue[French] = {}

World.Dialogue[French][-23] = Dialogue.new({
	Text.new("C'est la boîte à outils.",Varisa,nil,function(npc)
		Story.set("Toolbox_Wilkie_3",true)
	end),
},1)

World.Dialogue[French][-22] = Dialogue.new({
	Text.new("Ce n'est pas mon lit.",Varisa),
},1)

World.Dialogue[French][-21] = Dialogue.new({
	Text.new("There's no power, the food is rotting.",Varisa),
},1)

World.Dialogue[French][-20] = Dialogue.new({
	Text.new("There's no power.",Varisa),
},1)

World.Dialogue[French][-19] = Dialogue.new({
	Text.new("Nothing left.",Varisa),
},1)

World.Dialogue[French][-18] = Dialogue.new({
	Text.new("Found something.",Varisa,nil,function(npc)
		Story.set("Find",true,npc)
		Story.set("Find",false)
	end),
},1)

World.Dialogue[French][-17] = Dialogue.new({
	Text.new("Got the box.",Varisa,nil,function()
		Story.set("Zoey_Errands_2",true)
	end),
},1)

World.Dialogue[French][-16] = Dialogue.new({
	Text.new("What a nice box.",Varisa),
},1)

World.Dialogue[French][-15] = Dialogue.new({
	Text.new("Got the milk.",Varisa,nil,function()
		Story.set("Lassie_Baking_2",true)
	end),
	Text.new("There's no milk.",Varisa),
},1)

World.Dialogue[French][-14] = Dialogue.new({
	Text.new("There's a lot of stuff.",Varisa),
},1)

World.Dialogue[French][-13] = Dialogue.new({
	Text.new("Threw the trash away",Varisa,nil,function()
		Story.set("Brian_Trash_3",true)
	end),
	Text.new("It's a trash can.",Varisa),
},1)

World.Dialogue[French][-12] = Dialogue.new({
	Text.new("It's a trash can.",Varisa),
},1)

World.Dialogue[French][-11] = Dialogue.new({
	Text.new("It's trash",Varisa,nil,function()
		Story.set("Brian_Trash_2",true)
	end),
},1)

World.Dialogue[French][-10] = Dialogue.new({
	Text.new("Après Jour?",Varisa),
	Text.new("Êtes-vous sûr?",Varisa),
	Text.new("Zzzz...",Varisa,nil,function()
		World.AfterEffect = function()
			Jukebox_stop()
			Days.loadDay(GameDay + 1)
		end
	end),
},0)

World.Dialogue[French][-9] = Dialogue.new({
	Text.new("It's an engagement ring?",Varisa,nil,function()
		Story.set("Mollie_Breakup_4",true)
	end),
	Text.new("It's an engagement ring?",Varisa),
},1)

World.Dialogue[French][-8] = Dialogue.new({
	Text.new("There's something in the bookshelf.",Varisa,nil,function()
		Story.set("Mollie_Breakup_3",true)
	end),
	Text.new("There's something in the bookshelf.",Varisa),
},1)

World.Dialogue[French][-7] = Dialogue.new({
	Text.new("That's too disgusting to touch.",Varisa),
},1)

World.Dialogue[French][-6] = Dialogue.new({
	Text.new("There's a code in this box.",Varisa,nil,function()
		Story.set("Mollie_Breakup_2",true)
	end),
	Text.new("There's a code in this box.",Varisa),
},1)

World.Dialogue[French][-5] = Dialogue.new({
	Text.new("There's nothing in this box.",Varisa),
},1)

World.Dialogue[French][-4] = Dialogue.new({
	Text.new("There's food in here.",Varisa,nil,function()
		-- give random food
	end),
	Text.new("There's food in here.",Varisa),
},1)

World.Dialogue[French][-3] = Dialogue.new({
	Text.new("It's locked, I need a code.",Varisa),
},1)

World.Dialogue[French][-2] = Dialogue.new({
	Text.new("Il n'y a rien ici.",Varisa),
},1)

World.Dialogue[French][-1] = Dialogue.new({
	Text.new("Je peux pas utiliser ce.",Varisa),
},1)

World.Dialogue[French][0] = Dialogue.new({
	Text.new("Ils sont ne dire pas trop.",Varisa),
	Text.new("Leur dialogue pourrait être détruite.",Varisa),
},0)

World.Dialogue[French][1] = Dialogue.new({
	Text.new("Salut",Varisa),
	Text.newAnimatedLeft("Salut Var!",Tracey,1),
	Text.new("Est ce que ta mamam a encore des biscits?",Varisa),
	Text.newAnimatedLeft("Devrait être quelques dans l'interieur",Tracey,1),
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
	Text.new("Still one person missing",TV_B),
	Text.new("Les officials demander...",TV_B),
	Text.new("Are satanists responsible?",TV_B),
	Text.new("*Charabia Random*",TV_B),
},1)

World.Dialogue[French][4] = Dialogue.new({
	Text.new("Tout le monde....",TV_B),
	Text.new("Rien des tout a en train.",TV_B),
	Text.new("*Charabia Random*",TV_B),
},1)

World.Dialogue[French][5] = Dialogue.new({
	Text.newAnimated("Salut Var!",Rachel,1),
	Text.new("Salut",Varisa),
	Text.newAnimated("Tu penses que tu peux visiter ma maison?",Rachel,1),
	Text.new("Ouais, Je peux visiter.",Varisa),
	Text.newAnimated("Super.",Rachel,1),
	Text.newAnimated("J'ai besoin que tu demandes la boîte à outils à ma mère.",Rachel,1),
	Text.new("Ouais.",Varisa),
	Text.newAnimated("Tu l'as?",Rachel,1,nil,function()
		Story.set("Toolbox_Wilkie_1",true)
	end),
	Text.newAnimated("Tu l'as?",Rachel,1),
},1)

require("/dialogue/French/general/mailboxes")

World.Dialogue[French][18] = Dialogue.new({
	Text.new("Bonjour Varisa.",Wilkie),
	Text.new("Salut.",Varisa),
	Text.new("Quoi t'amène ici aujourd'hui?",Wilkie),
	Text.new("Mme. Fisher a dit que vous avez sa boîte à outils.",Varisa),
	Text.new("Oui, c'est dans ma chambre.",Wilkie),
	Text.new("Oh, super.",Varisa),
	Text.new("Je juste as besoin de quelques chose de lui.",Varisa),
	Text.new("Ah, Ouais.",Wilkie),
	Text.new("Gardez-le loin du danger",Wilkie,nil,function()
		Story.set("Toolbox_Wilkie_3",true)
	end),
	Text.new("Gardez-le loin du danger",Wilkie),
},1)

-- Todo: Story Flow chart / Dialogue but in French
World.Dialogue[French][19] = Dialogue.new({
	Text.new("Salut Varisa.",Karina),
},1)

World.Dialogue[French][20] = Dialogue.new({
	Text.new("Salut Varisa.",Zach),
},1)

World.Dialogue[French][21] = Dialogue.new({
	Text.newAnimated("C'est à été jours.",Jami,0),
	Text.newAnimated("Je ne peux plus prendre ça.",Jami,0),
	Text.new("Pourquoi?",Varisa),
	Text.newAnimated("Ce sont pas tes affaires.",Jami,0),
	Text.new("Ça va. je suppose...",Varisa),
	Text.new("Cependant, avez-vous voir Karly par ici?",Varisa),
	Text.newAnimated("Elle est absent toujours?",Jami,0),
	Text.newAnimated("Et toujours pas d'indices?",Jami,0),
	Text.new("ouais...",Varisa),
	Text.newAnimated("Es-tu dans sa testament?",Jami,0),
	Text.new("Quoi?",Varisa),
	Text.new("Qu'est-ce qui va pas chez toi putain?!",Varisa),
	Text.newAnimated("Désolé",Jami,0),
	Text.newAnimated("Je voir que été un peu d'insensible",Jami,0),
	Text.new("Vous pensez?",Varisa),
	Text.newAnimated("Ici, prends ça.",Jami,0,nil,function()
		Story.set("Screw_Drive_Jami",true)
	end),
	Text.newAnimated("Toutes mes excuses encore.",Jami,0),
},1)

World.Dialogue[French][22] = Dialogue.new({
	Text.newAnimated("Salut Varisa.",Mollie,0),
},1)

World.Dialogue[French][23] = Dialogue.new({
	Text.newAnimated("Salut Varisa.",Lassie,0),
	Text.new("Salut.",Varisa),
	Text.new("Sais-tu où est la boîte à outils?",Varisa),
	Text.newAnimated("Je pense j'ai le donné à Wilkie il y a quelques jours...",Lassie,1),
	Text.new("Oh.",Varisa),
	Text.newAnimated("Ouais, desolé.",Lassie,1),
	Text.newAnimated("Il devrait toujours l'avoir.",Lassie,1),
},1)

World.Dialogue[French][24] = Dialogue.new({
	Text.new("What is the matter?",Fredrick),
	Text.new("Hey...",Varisa),
	Text.new("Yes?",Fredrick),
	Text.new("You know my mom right?",Varisa),
	Text.new("Who are you, again?",Fredrick),
	Text.new("Varisa Carmel.... The girl that-",Varisa),
	Text.new("Threw eggs at my house.",Fredrick),
	Text.new("Oh yeah, I remember you...",Fredrick),
	Text.new("Why aren't you still in jail?",Fredrick),
	Text.new("Cause that happened when I was 12.",Varisa),
	Text.new("It's been like 7 years...",Varisa),
	Text.new("I thought you'd remember me because...",Varisa),
	Text.new("I help Wilkie a lot",Varisa),
	Text.new("But Farisa does that.",Fredrick),
	Text.new("What does they look like...",Varisa),
	Text.new("...",Fredrick),
	Text.new("You I suppose...",Fredrick,nil,function()
		Story.set("Fredrick_Reconsider",true)
	end),
	Text.new("Peculiar.",Varisa),
	Text.new("So you're not completely terrible",Fredrick),
	Text.new("Perhaps.",Varisa),
	Text.new("Anyway, would you like to exercise with me?",Fredrick),
	Text.new("What?",Varisa),
	Text.new("You know, moving around.",Fredrick),
	Text.new("It helps keep the body in shape.",Fredrick),
	Text.new("I guess...",Varisa,nil,function()
		Story.set("Fredrick_Exercise_1",true)
	end),
	Text.new("At least pretend to use the jump rope I gave you.",Fredrick),
},1)

World.Dialogue[French][25] = Dialogue.new({
	Text.new("Salut Varisa.",Vivian),
},1)

World.Dialogue[French][26] = Dialogue.new({
	Text.new("Varisa?",Sean),
	Text.new("Salut...",Varisa),
},1)

World.Dialogue[French][27] = Dialogue.new({
	Text.new("Qui es-tu merde?",Ella),
},1)

World.Dialogue[French][28] = Dialogue.new({
	Text.newAnimated("Salut Varisa...",Brian,0),
	Text.new("Ehh... Ouais.",Varisa),
	Text.newAnimated("I'm very busy right now...",Brian,0),
	Text.newAnimated("And uhh, Vivian told me to take out the trash.",Brian,0),
	Text.newAnimated("You wouldn't mind taking it out for me?",Brian,0),
	Text.new("But aren't you just standing around?",Varisa),
	Text.newAnimated("I'm very busy, you wouldn't understand.",Brian,0),
	Text.new("Yeah me too.",Varisa),
	Text.newAnimated("Too busy for 150?",Brian,1),
	Text.new("You're bluffing.",Varisa),
	Text.newAnimated("Your loss, I guess.",Brian,0),
	Text.new("Where's the trash?",Varisa),
	Text.newAnimated("Backyard, and make it quick.",Brian,0,nil,function()
		Story.set("Brian_Trash_1",true)
	end),
},1)

World.Dialogue[French][29] = Dialogue.new({
	Text.newAnimated("As-tu obtenu la boîte à outils?",Rachel,1),
	Text.new("Ouais, c'est ici.",Varisa),
	Text.newAnimated("Ouais.",Rachel,1),
	Text.newAnimated("Le tournevis.",Rachel,1),
	Text.newAnimated("Ou mieux encore, prends ma guitare.",Rachel,1,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.newAnimated("Maintenant tu peux le réparer.",Rachel,0),
	Text.newAnimated("Je t'attends.",Rachel,0),
},1)

World.Dialogue[French][30] = Dialogue.new({
	Text.newAnimated("As-tu obtenu la boîte à outils?",Rachel,1),
	Text.new("Non mais, notre vieille professeur de math m'a donner ça.",Varisa),
	Text.newAnimated("Mais non!",Rachel,1),
	Text.newAnimated("C'est exactement quel j'ai besoins!",Rachel,1),
	Text.new("Eh bien, ça marche je suppose.",Varisa),
	Text.newAnimated("Voilà, prends ma guitare.",Rachel,1,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.newAnimated("Maintenant tu peux le réparer.",Rachel,0),
	Text.newAnimated("Je t'attends.",Rachel,0),
},1)

World.Dialogue[French][31] = Dialogue.new({
	Text.newAnimated("As-tu obtenu la boîte à outils?",Rachel,1),
	Text.new("Wilkie est en utiliser encore.",Varisa),
	Text.new("Mais, il nous laissera emprunter l'outil tu as besoin.",Varisa),
	Text.newAnimated("Ouais.",Rachel,1),
	Text.newAnimated("Demande-lui le tournevis.",Rachel,1),
	Text.new("Tournevis?",Varisa),
	Text.new("Ouais?",Varisa),
	Text.new("Voir quoi notre vieille professeur de math m'a donner.",Varisa),
	Text.newAnimated("Mais non!",Rachel,1),
	Text.newAnimated("C'est exactement quel j'ai besoins!",Rachel,1),
	Text.new("Eh bien, ça marche je suppose.",Varisa),
	Text.newAnimated("Voilà, prends ma guitare.",Rachel,1,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.newAnimated("Maintenant tu peux le réparer.",Rachel,0),
	Text.newAnimated("Je t'attends.",Rachel,0),
},1)

World.Dialogue[French][32] = Dialogue.new({
	Text.newAnimated("Salut Var!",Rachel,1),
	Text.new("Salut",Varisa),
	Text.newAnimated("Tu penses que tu peux visiter ma maison?",Rachel,1),
	Text.new("Ouais, Je peux visiter.",Varisa),
	Text.newAnimated("Super.",Rachel,1),
	Text.newAnimated("J'ai besoin que tu demandes la boîte à outils à ma mère.",Rachel,1),
	Text.new("Attende, quoi tu as besoin des il?",Varisa),
	Text.newAnimated("Un tournevis?",Rachel,1),
	Text.new("Voir quoi notre vieille professeur de math m'a donner.",Varisa),
	Text.newAnimated("Mais non!",Rachel,1),
	Text.newAnimated("C'est exactement quel j'ai besoins!",Rachel,1),
	Text.new("Eh bien, ça marche je suppose.",Varisa),
	Text.newAnimated("Voilà, prends ma guitare.",Rachel,1,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.newAnimated("Maintenant tu peux le réparer.",Rachel,0),
	Text.newAnimated("Je t'attends.",Rachel,0),
},1)

World.Dialogue[French][33] = Dialogue.new({
	Text.newAnimated("There's a lot more people than usual.",Tracey,0),
	Text.new("You could say.",Varisa),
	Text.newAnimated("What's Mollie doing at the park",Tracey,0),
	Text.new("Playing in the sand?",Varisa),
	Text.newAnimated("Isn't she like what, 82?",Tracey,0),
	Text.new("27.",Varisa),
	Text.newAnimated("Wouldn't books be more her style?",Tracey,0),
	Text.new("French teachers can do other things...",Varisa),
	Text.newAnimated("Like?",Tracey,0),
	Text.new("Playing in the sand.",Varisa),
	Text.newAnimated("...",Tracey,0),
},1)

World.Dialogue[French][34] = Dialogue.new({
	Text.new("Stay away from me.",Fredrick),
	Text.new("Geez, sorry.",Varisa),
	Text.new("...",Fredrick),
},1)

World.Dialogue[French][35] = Dialogue.new({
	Text.new("Hey Varisa",Wilkie),
	Text.new("Hey.",Varisa),
	Text.new("What are you doing at the park today?",Wilkie),
	Text.new("Looking for my mother.",Varisa),
	Text.new("Oh dear, she's still missing?",Wilkie),
	Text.new("Yeah...",Varisa),
	Text.new("I hope you find her soon.",Wilkie),
	Text.new("I'm trying...",Varisa),
	Text.new("If you need anything, I'm right here.",Wilkie),
},1)

World.Dialogue[French][36] = Dialogue.new({
	Text.newAnimated("Eww...",Mollie,0),
	Text.new("What?",Varisa),
	Text.newAnimated("You and your stupid friend are at park.",Mollie,0),
	Text.new("We just got here...",Varisa),
	Text.newAnimated("I know.",Mollie,0),
	Text.newAnimated("Don't you have a mother to be looking for?",Mollie,0),
	Text.new("Yeah why?",Varisa),
	Text.newAnimated("So you can quit bothering me, twerp.",Mollie,0),
	Text.new("Why do you hate me so much?",Varisa),
	Text.newAnimated("Well, isn't it obvious? You suck!",Mollie,0),
	Text.newAnimated("You're a terrible student!",Mollie,0),
	Text.newAnimated("You and that punk friend of yours!",Mollie,0),
	Text.newAnimated("I'm surprised you even graduated!",Mollie,0),
	Text.newAnimated("You never paid attention in my class!",Mollie,0),
	Text.newAnimated("You always...",Mollie,0),
	Text.newAnimated("Well now you've got me rambling.",Mollie,0),
	Text.new("But you don't even teach me anymore?",Varisa),
	Text.newAnimated("So why are you bothering me right now?",Mollie,0),
	Text.new("Cause I need your help.",Varisa),
	Text.newAnimated("You need my help?",Mollie,1),
	Text.newAnimated("Out of everyone in town?",Mollie,1),
	Text.newAnimated("I suppose I could help you...",Mollie,1),
	Text.newAnimated("But you owe me big time after this.",Mollie,0),
	Text.new("Sure.",Varisa),
	Text.new("So what are you doing in the sand?",Varisa),
	Text.newAnimated("I dunno, something distract me from them...",Mollie,0),
	Text.new("Who?",Varisa),
	Text.newAnimated("Sean and that... bitch.",Mollie,0),
	Text.new("You have to be specific, I know several.",Varisa),
	Text.newAnimated("You know that one with the pink hair?",Mollie,0),
	Text.new("Yeah, I think?",Varisa),
	Text.new("Isn't she a teacher?",Varisa),
	Text.newAnimated("She couldn't teach even if she wanted to.",Mollie,0),
	Text.new("Intresting...",Varisa),
	Text.newAnimated("It just makes me so angry seeing them together.",Mollie,0,nil,function()
		World.AfterEffect = function ()
			Jukebox_stop()
			GameState = Cutscene
			Play.scene = Play.Scenes[11]
			Play.scene.Next = WORLD
		end
	end),
	Text.new("Uh...",Varisa),
	Text.newAnimated("What?",Mollie,0),
	Text.new("Don't tell me you watched them the WHOLE time.",Varisa),
	Text.newAnimated("Well how else would I have found out?",Mollie,0),
	Text.new("So, lets get this straight.",Varisa),
	Text.new("He dumped you to get with your best friend.",Varisa),
	Text.newAnimated("FORMER!",Mollie,0),
	Text.new("Okay, former best friend.",Varisa),
	Text.newAnimated("And you're going to help me break them up.",Mollie,1),
	Text.new("What?",Varisa),
	Text.newAnimated("Yes, what's the matter?",Mollie,0),
	Text.new("I dunno, that seems like quite a leap.",Varisa),
	Text.newAnimated("You just said you'd help me earlier",Mollie,0),
	Text.new("How am I supposed to do that?",Varisa),
	Text.newAnimated("Well they're not home right now.",Mollie,0),
	Text.newAnimated("Sean's definitly cheating on her.",Mollie,0),
	Text.newAnimated("Or she's cheating on him.",Mollie,0),
	Text.newAnimated("Now, I still have one of his spare keys.",Mollie,1),
	Text.newAnimated("So you're going find proof in his house.",Mollie,1),
	Text.newAnimated("Then bring it back to me.",Mollie,1),
	Text.new("I guess, I'll do it.",Varisa,nil,function()
		Story.set("Mollie_Breakup_1",true)
	end),
	Text.newAnimated("Great, now get on with it, twerp",Mollie,1),
	Text.newAnimated("You done, twerp?",Mollie,0),
},1)

World.Dialogue[French][37] = Dialogue.new({
	Text.newAnimated("Eww...",Mollie,0),
	Text.new("What?",Varisa),
	Text.newAnimated("You and your stupid friend are at park.",Mollie,0),
	Text.new("We just got here...",Varisa),
	Text.newAnimated("I know.",Mollie,0),
	Text.newAnimated("Don't you have a dead mother to be looking for?",Mollie,0),
	Text.new("Yeah............",Varisa),
	Text.new("Wait?",Varisa),
	Text.new("What did you say?",Varisa),
	Text.newAnimated("It's been like what, 2 days.",Mollie,0),
	Text.newAnimated("There's a killer on the loose.",Mollie,0),
	Text.newAnimated("Put two and two, together.",Mollie,0),
	Text.new("What the fuck is wrong with you?!",Varisa),
	Text.newAnimated("I'm just telling you the truth.",Mollie,0),
	Text.new("Maybe being an asshole is just natural to you.",Varisa),
	Text.newAnimated("Fuck off.",Mollie,0),
},1)

World.Dialogue[French][38] = Dialogue.new({
	Text.newAnimated("You done, twerp?",Mollie,0),
	Text.new("Yep.",Varisa),
	Text.newAnimated("What did you find?",Mollie,0),
	Text.new("An engagement ring.",Varisa),
	Text.newAnimated("Seriously?",Mollie,0),
	Text.new("Yeah.",Varisa),
	Text.newAnimated("Screw me I guess.",Mollie,0),
	Text.new("You could try therapy.",Varisa),
	Text.newAnimated("...",Mollie,0,nil,function()
		Story.set("Mollie_Breakup_5",true)
	end),
	Text.newAnimated("I guess...",Mollie,0),
},1)

World.Dialogue[French][39] = Dialogue.new({
	Text.new("This just in...",TV_B),
	Text.new("Police are now offering $5000...",TV_B),
	Text.new("To anyone with information on Mrs. Carmel.",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)

World.Dialogue[French][40] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.newAnimated("We're kinda in the middle of something.",Sean,0),
	Text.new("So? I need help.",Varisa),
	Text.newAnimated("Why do you keep bothering me?",Sean,1),
	Text.newAnimated("You graduated so long ago already?",Sean,1),
	Text.new("My mom is still missing.",Varisa),
	Text.newAnimated("I'm sorry but I don't know anything.",Sean,1,nil, function()
		for i,v in pairs(World.Map[25].npcs) do
			if v.f == "Ella" then
				v.i = 48
			end
		end
	end),
	Text.newAnimated("I'm sorry but I don't know anything.",Sean,1),
},1)

World.Dialogue[French][41] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.newAnimated("I don't like the way you look at us.",Ella,0),
	Text.new("Uhh I'm not looking at you weird?",Varisa),
	Text.newAnimated("I'd appreciate it if you left.",Ella,0),
	Text.new("Alright I guess.",Varisa),
	Text.newAnimated("Go on.",Ella,1,nil, function()
		for i,v in pairs(World.Map[25].npcs) do
			if v.f == "Sean" then
				v.i = 47
			end
		end
	end),
	Text.newAnimated("Go on.",Ella,1),
},1)

World.Dialogue[French][42] = Dialogue.new({
	Text.newAnimated("You actually did it?",Brian,1),
	Text.new("Wait...",Varisa),
	Text.newAnimated("I suppose I should pay you.",Brian,0),
	Text.new("You weren't before?",Varisa),
	Text.newAnimated("I'm a better person than that.",Brian,0),
	Text.new("Okay",Varisa),
	Text.newAnimated("Take this check.",Brian,1,nil,function()
		Story.set("Brian_Trash_4",true)
	end),
	Text.new("Thanks I guess",Varisa,nil,function(npc)
		npc.i = 109
	end),
},1)

World.Dialogue[French][43] = Dialogue.new({
	Text.new("Go away.",Fredrick),
},1)

World.Dialogue[French][44] = Dialogue.new({
	Text.newAnimated("You, there.",Karina,0),
	Text.newAnimated("Don't you roll your eyes at me.",Karina,0),
	Text.newAnimated("I have something important to say.",Karina,0),
	Text.new("More fire and brimstone?",Varisa),
	Text.newAnimated("Not necessarily, but...",Karina,0),
	Text.newAnimated("Everyone here is a sicko.",Karina,0),
	Text.new("And you wonder why people hate you.",Varisa),
	Text.newAnimated("It's persecution I say.",Karina,0),
	Text.new("Anything else new to say?",Varisa),
	Text.newAnimated("What more is there to say?",Karina,0),
	Text.new("What's that.",Varisa),
	Text.newAnimated("My crucifix?",Karina,0),
	Text.newAnimated("You can have it if you want.",Karina,1),
	Text.newAnimated("I have a bunch lying around.",Karina,1),
	Text.new("I guess.",Varisa,nil,function()
		Story.set("Karina_1",true)
	end),
	Text.newAnimated("Save your soul",Karina,1),
	Text.newAnimated("I'll be waiting.",Karina,1),
},1)

World.Dialogue[French][45] = Dialogue.new({
	Text.newAnimated("Hey.",Lassie,0),
	Text.new("Hey",Varisa),
	Text.newAnimated("I need your help baking.",Lassie,0),
	Text.new("What do you need?",Varisa),
	Text.newAnimated("Uhh...",Lassie,1),
	Text.newAnimated("Rachel always knew were everything was...",Lassie,1),
	Text.newAnimated("Let me try to remember...",Lassie,1),
	Text.newAnimated("I need a cup of milk.",Lassie,1),
	Text.newAnimated("It should be in the fridge.",Lassie,1,nil,function ()
		Story.set("Lassie_Baking_1",true)
	end),
	Text.new("Sure.",Varisa),
	Text.newAnimated("Alright.",Lassie,1),
	Text.newAnimated("You got it?",Lassie,1),
},1)

World.Dialogue[French][46] = Dialogue.new({
	Text.newAnimated("Hey.",Lassie,0),
	Text.new("Hey",Varisa),
},1)

World.Dialogue[French][47] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.newAnimated("You heard what she said.",Sean,0),
	Text.newAnimated("Now if you don't mind, we're busy.",Sean,1),
	Text.newAnimated("Go on scram.",Sean,0),
},1)

World.Dialogue[French][48] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.newAnimated("I'm not much help too.",Ella,0),
	Text.newAnimated("I don't know anything.",Ella,0),
},1)

World.Dialogue[French][49] = Dialogue.new({
	Text.new("Hey Varisa.",Zoey),
	Text.new("Hey Ms. Drew.",Varisa),
	Text.new("If you're not too busy I need some help.",Zoey),
	Text.new("Help with what?",Varisa),
	Text.new("I ordered something about a month ago...",Zoey),
	Text.new("I checked the postal office two days ago...",Zoey),
	Text.new("They say it's been delivered, but I haven't seen it.",Zoey),
	Text.new("Please do help me look around for it.",Zoey),
	Text.new("Alright, i'll keep an eye out",Varisa,nil,function()
		Story.set("Zoey_Errands_1",true)
	end),
	Text.new("Thank you so much.",Zoey),
	Text.new("This means so much to me.",Zoey),
},1)

World.Dialogue[French][50] = Dialogue.new({
	Text.new("You found it!",Zoey),
	Text.new("Where was it?",Zoey),
	Text.new("It was out by Jami's house.",Varisa),
	Text.new("That's strange...",Zoey),
	Text.new("But at least I have my package.",Zoey),
	Text.new("You and Tracey stay safe now.",Zoey),
},1)

World.Dialogue[French][51] = Dialogue.new({
	Text.newAnimated("Who's package is that?",Jami,0,nil,function(npc)
		npc.i = 59
	end),
},1)

World.Dialogue[French][52] = Dialogue.new({
	Text.newAnimated("Who's package is that?",Jami,0),
	Text.new("Zoey's",Varisa),
	Text.newAnimated("Hmm... Intresting.",Jami,0),
	Text.new("So i'm gonna take it now...",Varisa),
	Text.newAnimated("Sure it's not my package.",Jami,0,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[French][53] = Dialogue.new({
	Text.newAnimated("Who's package was that?",Jami,0),
	Text.new("Zoey's",Varisa),
	Text.newAnimated("Hmm... Intresting.",Jami,0),
	Text.newAnimated("Tell her I appologize for the inconvenience.",Jami,0,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[French][54] = Dialogue.new({
	Text.newAnimated("Damn, always on a Tuesday, huh",Rachel,1),
	Text.newAnimated("I'd suggest you check what's going on outside",Rachel,1),
	Text.newAnimated("...",Rachel,1),
},1)

World.Dialogue[French][55] = Dialogue.new({
	Text.newAnimatedLeft("If only you played acoustic",Tracey,1),
	Text.newAnimatedLeft("You should probably check what's going on outside",Tracey,1),
	Text.newAnimatedLeft("...",Tracey,1),
},1)

World.Dialogue[French][56] = Dialogue.new({
	Text.new("What's going on Varisa?",Zoey),
	Text.new("I have no idea.",Varisa),
	Text.new("Just stay CALM OKAY!",Zoey),
	Text.new("uhh..........",Varisa),
	Text.new("EVERYTHING will be alright.",Zoey),
	Text.new("okay..........",Varisa),
},1)

World.Dialogue[French][57] = Dialogue.new({
	Text.newAnimated("Say, I need your help again",Jami,1),
	Text.new("What the hell is wrong with you?",Varisa),
	Text.newAnimated("Huh?",Jami,1),
	Text.newAnimated("It's just part of the method.",Jami,1),
	Text.new("Turn the lights back on.",Varisa),
	Text.newAnimated("In a bit, I need you to measure in the dark.",Jami,1),
	Text.new("What?",Varisa),
	Text.newAnimated("Take that Wray and use it in the dark.",Jami,1),
	Text.new("Is this why you had to cut the power?",Varisa),
	Text.newAnimated("Yes.",Jami,1),
	Text.new("You're insane.",Varisa),
	Text.newAnimated("Every genius is.",Jami,1),
	Text.newAnimated("I need you to record 3 more samples.",Jami,1,nil,function()
		Story.set("Jami_Experiment_2_1",true)
	end),
	Text.newAnimated("Come back with those samples and...",Jami,1),
	Text.newAnimated("Maybe i'll fix the power.",Jami,1),
	Text.new("Fine....",Varisa),
	Text.newAnimated("Tick tock.",Jami,1),
},1)

World.Dialogue[French][58] = Dialogue.new({
	Text.newAnimated("Say, I need your help",Jami,1),
	Text.new("What the hell is wrong with you?",Varisa),
	Text.newAnimated("Huh?",Jami,1),
	Text.new("You're insane.",Varisa),
	Text.new("Turn the lights back on.",Varisa),
	Text.newAnimated("In a bit.",Jami,1),
	Text.new("I don't have a 'bit'",Varisa),
	Text.newAnimated("Here, this tool will explain everything.",Jami,1,nil,function()
		Story.set("Jami_Experiment_2_1",true)
	end),
	Text.newAnimated("I need you to record 3 samples.",Jami,1),
	Text.newAnimated("Take samples far enough from each other.",Jami,1),
	Text.newAnimated("Come back with those samples and...",Jami,1),
	Text.newAnimated("Maybe i'll fix the power.",Jami,1),
	Text.newAnimated("Tick tock.",Jami,1),
},1)

World.Dialogue[French][59] = Dialogue.new({
	Text.new("I dunno.",Varisa),
	Text.newAnimated("It just showed up today for some reason.",Jami,0),
	Text.new("Odd.",Varisa),
	Text.newAnimated("Indeed.",Jami,0,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[French][60] = Dialogue.new({
	Text.newAnimated("Say...",Jami,1),
	Text.newAnimated("If you don't mind, I need some help.",Jami,1),
	Text.new("Sure....",Varisa),
	Text.newAnimated("Uhhh.... i'm pretty sure you barely passed physics?",Jami,1),
	Text.new("Yeah.",Varisa),
	Text.newAnimated("Okay...",Jami,1),
	Text.newAnimated("So, there's this energy",Jami,1),
	Text.newAnimated("And I've made a detector for it",Jami,1),
	Text.newAnimated("Here",Jami,1,nil,function()
		Story.set("Jami_Experiment_1_1",true)
	end),
	Text.newAnimated("I need you to record 3 samples.",Jami,1),
	Text.newAnimated("I have a feeling it's based on...",Jami,1),
	Text.newAnimated("the number of people around.",Jami,1),
	Text.newAnimated("Take samples far enough from each other.",Jami,1),
	Text.newAnimated("Thanks for the help.",Jami,1),
},1)

World.Dialogue[French][61] = Dialogue.new({
	Text.newAnimated("You're done?",Jami,0),
	Text.new("Yep.",Varisa),
	Text.newAnimated("Great, let me look at what you recorded.",Jami,0),
	Text.newAnimated("............",Jami,0),
	Text.newAnimated("Wow, intresting",Jami,0),
	Text.newAnimated("It seems like that's not the variable.",Jami,0),
	Text.newAnimated("Say, keep it with you.",Jami,1,nil,function()
		Story.set("Jami_Experiment_1_3",true)
	end),
	Text.newAnimated("Record anything else you find.",Jami,1),
	Text.newAnimated("Have fun, go nuts.",Jami,1),
},1)

World.Dialogue[French][62] = Dialogue.new({
	Text.newAnimated("They still had it?",Lassie,1),
},1)

World.Dialogue[French][63] = Dialogue.new({
	Text.newAnimated("Say, I need your help again",Jami,1),
	Text.new("What the hell is wrong with you?",Varisa),
	Text.newAnimated("Huh?",Jami,1),
	Text.newAnimated("It's just part of the method.",Jami,1),
	Text.new("Turn the lights back on.",Varisa),
	Text.newAnimated("In a bit, I need you to measure in the dark.",Jami,1),
	Text.new("What?",Varisa),
	Text.newAnimated("Take that Wray and use it in the dark.",Jami,1),
	Text.new("Is this why you had to cut the power?",Varisa),
	Text.newAnimated("Yes.",Jami,1),
	Text.new("You're insane.",Varisa),
	Text.newAnimated("Every genius is.",Jami,1),
	Text.newAnimated("I need you to actually record 3 more samples.",Jami,1,nil,function()
		Story.set("Jami_Experiment_2_1",true)
	end),
	Text.newAnimated("Come back with those samples and...",Jami,1),
	Text.newAnimated("Maybe i'll fix the power.",Jami,1),
	Text.newAnimated("Don't just leave like last time.",Jami,1),
	Text.new("Fine....",Varisa),
	Text.newAnimated("Tick tock.",Jami,1),
},1)

World.Dialogue[French][64] = Dialogue.new({
	Text.newAnimated("What the hell is going on?",Lassie,1),
	Text.newAnimated("I just saw everyone here trying to call for help.",Lassie,0),
	Text.new("Cool.",Varisa),
	Text.newAnimated("...",Lassie,0),
},1)

World.Dialogue[French][65] = Dialogue.new({
	Text.new("I wish the power company would come sooner.",Zach),
	Text.new("Same.",Varisa),
	Text.new("You should stay for the demonstration.",Zach),
	Text.new("Maybe.",Varisa),
	Text.new("...",Zach),
	Text.new("Though, Karina's has something she wants to tell you.",Zach),
	Text.new("She said I should tell you, if I saw you.",Zach),
	Text.new("...",Zach),
},1)

World.Dialogue[French][66] = Dialogue.new({
	Text.newAnimated("I hate those two.",Mollie,0),
	Text.new("Nothing about the power?",Varisa),
	Text.newAnimated("Huh, what?",Mollie,0),
	Text.new("The reason why we're outside?",Varisa),
	Text.newAnimated("Oh the power.",Mollie,0),
	Text.new("...",Varisa),
	Text.newAnimated("...",Mollie,0),
	Text.newAnimated("I mean, just look at them.",Mollie,0),
	Text.newAnimated("...",Mollie,0),
},1)

World.Dialogue[French][67] = Dialogue.new({
	Text.newAnimated("What a day.",Sean,0),
	Text.new("A day alright.",Varisa),
	Text.newAnimated("...",Sean,0),
},1)

World.Dialogue[French][68] = Dialogue.new({
	Text.newAnimated("God, I hate that bitch.",Ella,1),
	Text.newAnimated("I HEARD THAT!",Mollie,0),
	Text.new("The power?",Varisa),
	Text.newAnimated("What about the power?",Ella,1),
	Text.new("Okay...",Varisa),
	Text.newAnimated("...",Ella,0),
},1)

World.Dialogue[French][69] = Dialogue.new({
	Text.newAnimated("They really gotta upgrade the power here.",Brian,0),
	Text.new("Yes.",Varisa),
	Text.newAnimated("...",Brian,0),
},1)

World.Dialogue[French][70] = Dialogue.new({
	Text.newAnimated("It never hurts to leave the house.",Vivian,1),
	Text.new("Yeah, but the power coming back would be nice.",Varisa),
},1)

World.Dialogue[French][71] = Dialogue.new({
	Text.newAnimated("I hate those two.",Mollie,0),
	Text.new("Nothing about the power?",Varisa),
	Text.newAnimated("It ruined my plans too.",Mollie,0),
	Text.new("What plans?",Varisa),
	Text.newAnimated("Nothing that concerns you...",Mollie,0),
	Text.new("...",Varisa),
	Text.newAnimated("...",Mollie,0),
},1)

World.Dialogue[French][72] = Dialogue.new({
	Text.newAnimated("It really hurts to leave the house.",Vivian,1),
	Text.new("Yeah, the power coming back would be nice.",Varisa),
	Text.newAnimated("Just a few more minutes and I would have been done.",Vivian,1),
	Text.newAnimated("...",Vivian,1),
},1)

World.Dialogue[French][73] = Dialogue.new({
	Text.newAnimated("The house reeked of something recently.",Brian,0),
	Text.newAnimated("I could have sworn the trash was taken out.",Brian,0),
	Text.new("Odd. Anything else out of the ordinary.",Varisa),
	Text.newAnimated("Muffuled voices almost pleading for help.",Brian,0),
	Text.newAnimated("I think its from the crime shows Vivian watches alot.",Brian,0),
	Text.newAnimated("Maybe she could help you with that mystery of yours.",Brian,1),
	Text.new("Maybe...",Varisa),
	Text.newAnimated("...",Brian,0),
},1)

World.Dialogue[French][74] = Dialogue.new({
	Text.new("Is pudding day. Ja.",Fredrick),
	Text.new("Cool, but wasn't yesterday exercise day?",Varisa),
	Text.new("It's a German thing, you would not understand.",Fredrick),
	Text.new("Okay.",Varisa),
	Text.new("I understand pudding.",Varisa),
	Text.new("You seem too.",Fredrick),
	Text.new("It never hurts to share.",Fredrick,nil,function()
		Story.set("Fredrick_Pudding_1",true)
		Story.set("Fredrick_Reconsider",true)
	end),
	Text.new("Wow? You're being nice to me for once.",Varisa),
	Text.new("I suppose it's the least I can do.",Fredrick),
	Text.new("And with your mother gone.",Fredrick),
	Text.new("Enjoy the pudding.",Fredrick),
},1)

World.Dialogue[French][75] = Dialogue.new({
	Text.new("Is pudding day. Ja.",Fredrick),
	Text.new("What?",Varisa),
	Text.new("It's a German thing, you would not understand.",Fredrick),
	Text.new("Okay.",Varisa),
	Text.new("I understand pudding.",Varisa),
	Text.new("You seem too.",Fredrick),
},1)

World.Dialogue[French][76] = Dialogue.new({
	Text.newAnimated("I need your help.",Karina,0),
	Text.new("Even with the lights out?",Varisa),
	Text.newAnimated("Yeah.",Karina,0),
	Text.new("Alright what is it?",Varisa),
	Text.newAnimated("Okay come on.",Karina,0,nil,function(npc)
		Story.set("Karina_Investigation_1", true)
		for i,v in ipairs(House.house) do
			if v.HouseHold == 3 then
				v.isOpen = true
				local I = Families.HouseMap[i]
				World.nextMap(World.Map[I + 2])
				for i,v in pairs(World.Map[I + 2].npcs) do
					if v.f then
						v.g = 0
					end
				end
			end
		end

		World.AfterEffect = function()
			Jukebox_stop()
			GameState = Cutscene
			Play.scene = Play.Scenes[12]
			Play.scene.Next = Fade

			npc.g = 1
			setPlr(10.5,12.5)
		end
	end),
},1)

World.Dialogue[French][77] = Dialogue.new({
	Text.newAnimated("So, that's pretty much it.",Karina,0),
	Text.new("Thank you so much for the help.",Varisa),
	Text.new("You don't know how much this means to me.",Varisa),
	Text.newAnimated("I suppose it makes up for all my troubles.",Karina,0),
	Text.newAnimated("Good Luck.",Karina,1),
},1)

World.Dialogue[French][78] = Dialogue.new({
	Text.new("Hey, Varisa.",Zach),
},1)

World.Dialogue[French][79] = Dialogue.new({
	Text.newAnimated("I'm so sick of Mollie.",Sean,0),
	Text.new("Okay.",Varisa),
	Text.newAnimated("That's all you have to say?",Sean,1),
	Text.new("I mean.",Varisa),
	Text.newAnimated("...",Sean,0),
	Text.newAnimated("...",Sean,0),
	Text.newAnimated("You wouldn't mind paying her back a bit?",Sean,1),
	Text.new("I guess.",Varisa),
	Text.newAnimated("Great.",Sean,0),
	Text.newAnimated("I want you to spy on her.",Sean,0),
	Text.newAnimated("Find out what she knows about me.",Sean,0, nil, function()
		Story.set("Sean_Response_1", true)
	end),
	Text.newAnimated("Tell me what you find.",Sean,0),
	Text.newAnimated("Got it?",Sean,1),
},1)

World.Dialogue[French][80] = Dialogue.new({
	Text.newAnimated("I'm so sick of Mollie.",Sean,0, nil, function()
		Story.set("Sean_Response_1", true)
	end),
	Text.new("Okay.",Varisa),
	Text.newAnimated("Rich from the person working with her",Sean,1),
	Text.new("I'm not.",Varisa),
	Text.newAnimated("Right...",Sean,1),
	Text.newAnimated("...",Sean,1),
	Text.newAnimated("You wouldn't mind paying her back a bit?",Sean,1),
	Text.new("I guess.",Varisa),
	Text.newAnimated("Great.",Sean,0),
	Text.newAnimated("I want you to spy on her.",Sean,0),
	Text.newAnimated("Find out what she knows about me.",Sean,0, nil, function()
		Story.set("Sean_Response_2", true)
	end),
	Text.newAnimated("Tell me what you find.",Sean,0),
	Text.newAnimated("Got it?",Sean,1),
},1)

World.Dialogue[French][81] = Dialogue.new({
	Text.newAnimated("You got it?",Jami,1),
	Text.new("Yeah.",Varisa),
	Text.newAnimated("Great.",Jami,1, nil,function()
		Story.set("Jami_Experiment_2_3",true)
	end),
	Text.new("So the power?",Varisa),
	Text.newAnimated("Check it in a bit.",Jami,1),
},1)

World.Dialogue[French][82] = Dialogue.new({
	Text.newAnimated("I need your help.",Mollie, 1, nil, function()
		Story.set("Mollie_Vengeance_1", true)
	end),
	Text.new("Ugh, I guess.",Varisa),
	Text.newAnimated("Great.",Mollie,1),
	Text.newAnimated("So here's what I need you to do.",Mollie,1),
	Text.newAnimated("You're going to sneak into Sean's house...",Mollie,1),
	Text.newAnimated("Find something damning.",Mollie,1),
	Text.new("Like what?",Varisa),
	Text.newAnimated("You'll know when you see it.",Mollie,1, nil, function()
		Story.set("Mollie_Vengeance_2", true)
	end),
	Text.newAnimated("Thanks for the help.",Mollie,1),
},1)

World.Dialogue[French][83] = Dialogue.new({
	Text.newAnimated("I need your help again.",Mollie,1, nil, function()
		Story.set("Mollie_Vengeance_1", true)
	end),
	Text.new("Ugh, I guess.",Varisa),
	Text.newAnimated("Great.",Mollie,1),
	Text.newAnimated("I need you find something again.",Mollie,1),
	Text.new("Wasn't that ring enough?",Varisa),
	Text.newAnimated("I need more.",Mollie,1),
	Text.new("I suppose.",Varisa),
	Text.newAnimated("Great.",Mollie,1, nil, function()
		Story.set("Mollie_Vengeance_2", true)
	end),
	Text.newAnimated("Thanks for the help.",Mollie,1),
},1)

World.Dialogue[French][84] = Dialogue.new({
	Text.newAnimated("I need your help.",Karina,0),
	Text.new("I already turned on the lights.",Varisa),
	Text.newAnimated("I know it's about something else.",Karina,0),
	Text.new("Alright what is it?",Varisa),
	Text.newAnimated("Okay come on.",Karina,0,nil,function(npc)
		Story.set("Karina_Investigation_1", true)
		for i,v in ipairs(House.house) do
			if v.HouseHold == 3 then
				v.isOpen = true
				local I = Families.HouseMap[i]
				World.nextMap(World.Map[I + 2])
				for i,v in pairs(World.Map[I + 2].npcs) do
					if v.f then
						v.g = 0
					end
				end
			end
		end

		World.AfterEffect = function()
			Jukebox_stop()
			GameState = Cutscene
			Play.scene = Play.Scenes[12]
			Play.scene.Next = Fade

			npc.g = 1
			setPlr(10.5,12.5)
		end
	end),
},1)

World.Dialogue[French][85] = Dialogue.new({
	Text.new("Weird...",Zoey),
	Text.new("Thanks regardless.",Zoey),
},1)

World.Dialogue[French][86] = Dialogue.new({
	Text.newAnimatedLeft("Oh you're done.",Tracey,1),
	Text.newAnimatedLeft("And we just finished moving the stuff.",Tracey,1),
	Text.newAnimatedLeft("Tomorow?",Tracey,1),
	Text.new("I guess.",Varisa),
	Text.newAnimatedLeft("See ya.",Tracey,1),
},1)

World.Dialogue[French][87] = Dialogue.new({
	Text.newAnimated("The power's back.",Rachel,0),
	Text.new("Yeah.",Varisa),
	Text.newAnimated("Thanks. I was worried it would take longer.",Rachel,0),
	Text.new("I suppose.",Varisa),
	Text.newAnimated("...",Rachel,0),
},1)

World.Dialogue[French][88] = Dialogue.new({
	Text.newAnimated("I figured you'd be back.",Vivian,0),
	Text.new("What?",Varisa),
	Text.newAnimated("Well....",Vivian,1),
	Text.newAnimated("I keep hearing Lassie talking about this one show.",Vivian,1),
	Text.newAnimated("It's honestly a great show.",Vivian,1),
	Text.newAnimated("Lassie seems like she keeps up with it pretty well.",Vivian,1),
	Text.newAnimated("Anyway the power went out while I was watching.",Vivian,1),
	Text.newAnimated("I need you to ask Lassie for her tape.",Vivian,1),
	Text.newAnimated("I know she recorded it.",Vivian,1),
	Text.new("Can't you ask her?",Varisa),
	Text.newAnimated("Its a bit hard when she hates my guts.",Vivian,1),
	Text.new("I suppose.",Varisa),
	Text.newAnimated("I'll be so thankful if you did.",Vivian,1),
	Text.new("Sure I guess.",Varisa,nil,function(npc)
		Story.set("Vivian_Show_1",true)
	end),
	Text.newAnimated("Great.",Vivian,0),
},1)

World.Dialogue[French][89] = Dialogue.new({
	Text.newAnimated("Hey Varisa.",Lassie,1),
	Text.newAnimated("Thanks for fixing the lights.",Lassie,1),
	Text.newAnimated("Though, the weather was nice today.",Lassie,1),
	Text.newAnimated("I think i'll stay out here.",Lassie,1),
},1)

World.Dialogue[French][90] = Dialogue.new({
	Text.newAnimated("Hey.",Lassie,0),
	Text.new("Hey, what sort of tapes do you have?",Varisa),
	Text.newAnimated("You want my tapes?",Lassie,1),
	Text.newAnimated("I don't recall watching anything you might like.",Lassie,1),
	Text.new("My mom wouldn't want to miss her shows.",Varisa),
	Text.newAnimated("Hmm, I could probably tape a few more too.",Lassie,1),
	Text.newAnimated("Its terrible what that sicko did to her.",Lassie,1),
	Text.newAnimated("I hope you find her soon.",Lassie,1),
	Text.newAnimated("Take what you need in the meantime.",Lassie,1,nil,function(npc)
		Story.set("Vivian_Show_2",true)
	end),
	Text.new("Thanks.",Varisa),
	Text.newAnimated("Good luck.",Lassie,1),
},1)

World.Dialogue[French][91] = Dialogue.new({
	Text.newAnimated("Have you got it yet?",Vivian,0),
},1)

World.Dialogue[French][92] = Dialogue.new({
	Text.newAnimated("Nice, the exact episode too.",Vivian,0,nil,function(npc)
		Story.set("Vivian_Show_4",true)
	end),
	Text.newAnimated("Thanks so much.",Vivian,0),
},1)

World.Dialogue[French][93] = Dialogue.new({
	Text.newAnimatedLeft("That was a great show.",Tracey,1),
	Text.newAnimated("We did pretty good.",Rachel,1),
	Text.new("I'm glad it went pretty okay.",Varisa),
	Text.newAnimatedLeft("I wonder when she's going to pay us.",Tracey,1),
	Text.new("We should get something nice tomorow.",Varisa),
	Text.newAnimated("Yeah.",Rachel,1),
	Text.newAnimatedLeft("Yeah.",Tracey,1),
	Text.new("Alright.",Varisa),
	Text.new("...",Varisa),
},1)

World.Dialogue[French][94] = Dialogue.new({
	Text.new("Was that good enough?",Varisa),
	Text.new("Precicely.",Fredrick),
	Text.new("Okay.",Varisa),
	Text.new("You can keep the jump rope.",Fredrick,nil,function()
		Story.set("Fredrick_Exercise_3",true)
	end),
	Text.new("Oh thanks.",Varisa),
	Text.new("No worries.",Fredrick),
},1)

World.Dialogue[French][95] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Ella),
},1)

World.Dialogue[French][96] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Sean),
},1)

World.Dialogue[French][97] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Wilkie),
},1)

World.Dialogue[French][98] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Zach),
},1)

World.Dialogue[French][99] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Karina),
},1)

World.Dialogue[French][100] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Zoey),
},1)

World.Dialogue[French][101] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Lassie),
},1)

World.Dialogue[French][102] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Jami),
},1)

World.Dialogue[French][103] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Brian),
},1)

World.Dialogue[French][104] = Dialogue.new({
Text.new("Hey.",Varisa),
	Text.new("Hey.",Mollie),
},1)

World.Dialogue[French][105] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Fredrick),
},1)

World.Dialogue[French][106] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hey.",Vivian),
},1)

World.Dialogue[French][107] = Dialogue.new({
	Text.new("MOM!",Varisa),
	Text.new("Mpfh...",Karly),
	Text.new("Let me get that off you.",Varisa),
	Text.new("Oh god...",Karly),
	Text.new("Where are they?",Karly),
	Text.new("Who are you talking about?",Varisa),
	Text.new("Nevermind that just get me out of here.",Karly,nil,function()
		World.AfterEffect = function(npc)
			Story.set("Karly_Find_1")
		end
	end),
},1)

World.Dialogue[French][108] = Dialogue.new({
	Text.new("MOM!",Varisa),
	Text.new("Mpfh...",Karly),
	Text.new("Oh god...",Karly),
	Text.new("Vivian must have done this.",Varisa),
	Text.new("You're a smart girl.",Karly),
	Text.new("About time you figured it out.",Karly),
	Text.new("Now get me out of here.",Karly,nil,function()
		World.AfterEffect = function(npc)
			Story.set("Karly_Find_2")
		end
	end),
},1)

World.Dialogue[French][109] = Dialogue.new({
	Text.newAnimated("Hey, I still have one more task.",Brian,1),
	Text.newAnimated("I need to hand out a bunch of flyers.",Brian,1),
	Text.new("For Vivian's birthday?",Varisa),
	Text.newAnimated("Yeah.",Brian,1),
	Text.newAnimated("Let me hand you some.",Brian,1,nil,function()
		Story.set("Brian_Flyer_1",true)
	end),
	Text.new("Thanks.",Varisa),
	Text.newAnimated("Try to get as much as possible.",Brian,1),
},1)

World.Dialogue[French][110] = Dialogue.new({
	Text.new("Rachel your guitar isn't broken.",Varisa),
	Text.newAnimated("Really?",Rachel,0),
	Text.new("It's just out of tune.",Varisa),
	Text.newAnimated("Well at least you fixed it.",Rachel,0),
	Text.new("No problem, let's keep practising.",Varisa),
	Text.newAnimated("...",Rachel,0),
},1)
