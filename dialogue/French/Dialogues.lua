World.Dialogue[French] = {}

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
			if bs then
				bs:stop()
			end
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
	Text.new("Quoi t'amène ici aujourd'hui?",Wilkie),
	Text.new("Mme. Fisher a dit que vous avez sa boîte à outils.",Varisa),
	Text.new("Elle en a besoin?",Wilkie),
	Text.new("Non non non.",Varisa),
	Text.new("Je juste as besoin de quelques chose de lui.",Varisa),
	Text.new("Ah, Ouais.",Wilkie),
	Text.new("De quoi as-tu besoin alors?",Wilkie),
	Text.new("Euhh....",Varisa),
	Text.new("Peux-je revenir à toi?",Varisa),
	Text.new("Ouais, prend ton temps",Wilkie,nil,function()
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
	Text.new("Cependant, avez-vous voir Karly par ici?",Varisa),
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
	Text.new("Je pense j'ai le donné à Wilkie il y a quelques jours...",Lassie),
	Text.new("Oh.",Varisa),
	Text.new("Ouais, desolé.",Lassie),
	Text.new("Il devrait toujours l'avoir.",Lassie),
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
	Text.new("Salut Varisa...",Brian),
	Text.new("Ehh... Ouais.",Varisa),
	Text.new("I'm very busy right now...",Brian),
	Text.new("And uhh, Vivian told me to take out the trash.",Brian),
	Text.new("You wouldn't mind taking it out for me?",Brian),
	Text.new("But aren't you just standing around?",Varisa),
	Text.new("I'm very busy, you wouldn't understand.",Brian),
	Text.new("Yeah me too.",Varisa),
	Text.new("Too busy for 150?",Brian),
	Text.new("You're bluffing.",Varisa),
	Text.new("Your loss, I guess.",Brian),
	Text.new("Where's the trash?",Varisa),
	Text.new("Backyard, and make it quick.",Brian,nil,function()
		Story.set("Brian_Trash_1",true)
	end),
},1)

World.Dialogue[French][29] = Dialogue.new({
	Text.new("As-tu obtenu la boîte à outils?",Rachel),
	Text.new("Wilkie est en utiliser encore.",Varisa),
	Text.new("Mais, il nous laissera emprunter l'outil tu as besoin.",Varisa),
	Text.new("Ouais.",Rachel),
	Text.new("Demande-lui le tournevis.",Rachel),
	Text.new("Ou mieux encore, prends ma guitare.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Maintenant tu peux le réparer.",Rachel),
	Text.new("Je t'attends.",Rachel),
},1)

World.Dialogue[French][30] = Dialogue.new({
	Text.new("As-tu obtenu la boîte à outils?",Rachel),
	Text.new("Non mais, notre vieille professeur de math m'a donner ça.",Varisa),
	Text.new("Mais non!",Rachel),
	Text.new("C'est exactement quel j'ai besoins!",Rachel),
	Text.new("Eh bien, ça marche je suppose.",Varisa),
	Text.new("Voilà, prends ma guitare.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Maintenant tu peux le réparer.",Rachel),
	Text.new("Je t'attends.",Rachel),
},1)

World.Dialogue[French][31] = Dialogue.new({
	Text.new("As-tu obtenu la boîte à outils?",Rachel),
	Text.new("Wilkie est en utiliser encore.",Varisa),
	Text.new("Mais, il nous laissera emprunter l'outil tu as besoin.",Varisa),
	Text.new("Ouais.",Rachel),
	Text.new("Demande-lui le tournevis.",Rachel),
	Text.new("Tournevis?",Varisa),
	Text.new("Ouais?",Varisa),
	Text.new("Voir quoi notre vieille professeur de math m'a donner.",Varisa),
	Text.new("Mais non!",Rachel),
	Text.new("C'est exactement quel j'ai besoins!",Rachel),
	Text.new("Eh bien, ça marche je suppose.",Varisa),
	Text.new("Voilà, prends ma guitare.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Maintenant tu peux le réparer.",Rachel),
	Text.new("Je t'attends.",Rachel),
},1)

World.Dialogue[French][32] = Dialogue.new({
	Text.new("Salut Var!",Rachel),
	Text.new("Salut",Varisa),
	Text.new("Tu penses que tu peux visiter ma maison?",Rachel),
	Text.new("Ouais, Je peux visiter.",Varisa),
	Text.new("Super.",Rachel),
	Text.new("J'ai besoin que tu demandes la boîte à outils à ma mère.",Rachel),
	Text.new("Attende, quoi tu as besoin des il?",Varisa),
	Text.new("Un tournevis?",Rachel),
	Text.new("Voir quoi notre vieille professeur de math m'a donner.",Varisa),
	Text.new("Mais non!",Rachel),
	Text.new("C'est exactement quel j'ai besoins!",Rachel),
	Text.new("Eh bien, ça marche je suppose.",Varisa),
	Text.new("Voilà, prends ma guitare.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("Maintenant tu peux le réparer.",Rachel),
	Text.new("Je t'attends.",Rachel),
},1)

World.Dialogue[French][33] = Dialogue.new({
	Text.new("There's a lot more people than usual.",Tracey),
	Text.new("You could say.",Varisa),
	Text.new("What's Mollie doing at the park",Tracey),
	Text.new("Playing in the sand?",Varisa),
	Text.new("Isn't she like what, 82?",Tracey),
	Text.new("27.",Varisa),
	Text.new("Wouldn't books be more her style?",Tracey),
	Text.new("French teachers can do other things...",Varisa),
	Text.new("Like?",Tracey),
	Text.new("Playing in the sand.",Varisa),
	Text.new("...",Tracey),
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
	Text.new("Eww...",Mollie),
	Text.new("What?",Varisa),
	Text.new("You and your stupid friend are at park.",Mollie),
	Text.new("We just got here...",Varisa),
	Text.new("I know.",Mollie),
	Text.new("Don't you have a mother to be looking for?",Mollie),
	Text.new("Yeah why?",Varisa),
	Text.new("So you can quit bothering me, twerp.",Mollie),
	Text.new("Why do you hate me so much?",Varisa),
	Text.new("Well, isn't it obvious? You suck!",Mollie),
	Text.new("You're a terrible student!",Mollie),
	Text.new("You and that punk friend of yours!",Mollie),
	Text.new("I'm surprised you even graduated!",Mollie),
	Text.new("You never paid attention in my class!",Mollie),
	Text.new("You always...",Mollie),
	Text.new("Well now you've got me rambling.",Mollie),
	Text.new("But you don't even teach me anymore?",Varisa),
	Text.new("So why are you bothering me right now?",Mollie),
	Text.new("Cause I need your help.",Varisa),
	Text.new("You need my help?",Mollie),
	Text.new("Out of everyone in town?",Mollie),
	Text.new("I suppose I could help you...",Mollie),
	Text.new("But you owe me big time after this.",Mollie),
	Text.new("Sure.",Varisa),
	Text.new("So what are you doing in the sand?",Varisa),
	Text.new("I dunno, something distract me from them...",Mollie),
	Text.new("Who?",Varisa),
	Text.new("Sean and that... bitch.",Mollie),
	Text.new("You have to be specific, I know several.",Varisa),
	Text.new("You know that one with the pink hair?",Mollie),
	Text.new("Yeah, I think?",Varisa),
	Text.new("Isn't she a teacher?",Varisa),
	Text.new("She couldn't teach even if she wanted to.",Mollie),
	Text.new("Intresting...",Varisa),
	Text.new("It just makes me so angry seeing them together.",Mollie,nil,function()
		World.AfterEffect = function ()
			muted = true
			if bs then
				bs:stop()
			end
			GameState = Cutscene
			Play.scene = Play.Scenes[5]
			Play.scene.Next = WORLD
		end
	end),
	Text.new("Uh...",Varisa),
	Text.new("What?",Mollie),
	Text.new("Don't tell me you watched them the WHOLE time.",Varisa),
	Text.new("Well how else would I have found out?",Mollie),
	Text.new("So, lets get this straight.",Varisa),
	Text.new("He dumped you to get with your best friend.",Varisa),
	Text.new("FORMER!",Mollie),
	Text.new("Okay, former best friend.",Varisa),
	Text.new("And you're going to help me break them up.",Mollie),
	Text.new("What?",Varisa),
	Text.new("Yes, what's the matter?",Mollie),
	Text.new("I dunno, that seems like quite a leap.",Varisa),
	Text.new("You just said you'd help me earlier",Mollie),
	Text.new("How am I supposed to do that?",Varisa),
	Text.new("Well they're not home right now.",Mollie),
	Text.new("Sean's definitly cheating on her.",Mollie),
	Text.new("Or she's cheating on him.",Mollie),
	Text.new("Now, I still have one of his spare keys.",Mollie),
	Text.new("So you're going find proof in his house.",Mollie),
	Text.new("Then bring it back to me.",Mollie),
	Text.new("I guess, I'll do it.",Varisa,nil,function()
		Story.set("Mollie_Breakup_1",true)
	end),
	Text.new("Great, now get on with it, twerp",Mollie),
	Text.new("You done, twerp?",Mollie),
},1)

World.Dialogue[French][37] = Dialogue.new({
	Text.new("Eww...",Mollie),
	Text.new("What?",Varisa),
	Text.new("You and your stupid friend are at park.",Mollie),
	Text.new("We just got here...",Varisa),
	Text.new("I know.",Mollie),
	Text.new("Don't you have a dead mother to be looking for?",Mollie),
	Text.new("Yeah............",Varisa),
	Text.new("Wait?",Varisa),
	Text.new("What did you say?",Varisa),
	Text.new("It's been like what, 2 days.",Mollie),
	Text.new("There's a killer on the loose.",Mollie),
	Text.new("Put two and two, together.",Mollie),
	Text.new("What the fuck is wrong with you?!",Varisa),
	Text.new("I'm just telling you the truth.",Mollie),
	Text.new("Maybe being an asshole is just natural to you.",Varisa),
	Text.new("Fuck off.",Mollie),
},1)

World.Dialogue[French][38] = Dialogue.new({
	Text.new("You done, twerp?",Mollie),
	Text.new("Yep.",Varisa),
	Text.new("What did you find?",Mollie),
	Text.new("An engagement ring.",Varisa),
	Text.new("Seriously?",Mollie),
	Text.new("Yeah.",Varisa),
	Text.new("Screw me I guess.",Mollie),
	Text.new("You could try therapy.",Varisa),
	Text.new("...",Mollie,nil,function()
		Story.set("Mollie_Breakup_5",true)
	end),
	Text.new("I guess...",Mollie),
},1)

World.Dialogue[French][39] = Dialogue.new({
	Text.new("This just in...",TV_B),
	Text.new("Police are now offering $5000...",TV_B),
	Text.new("To anyone with information on Mrs. Carmel.",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)

World.Dialogue[French][40] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("We're kinda in the middle of something.",Sean),
	Text.new("So? I need help.",Varisa),
	Text.new("Why do you keep bothering me?",Sean),
	Text.new("You graduated so long ago already?",Sean),
	Text.new("My mom is still missing.",Varisa),
	Text.new("I'm sorry but I don't know anything.",Sean,nil, function()
		for i,v in pairs(World.Map[25].npcs) do
			if v.f == "Ella" then
				v.i = 48
			end
		end
	end),
	Text.new("I'm sorry but I don't know anything.",Sean),
},1)

World.Dialogue[French][41] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("I don't like the way you look at us.",Ella),
	Text.new("Uhh I'm not looking at you weird?",Varisa),
	Text.new("I'd appreciate it if you left.",Ella),
	Text.new("Alright I guess.",Varisa),
	Text.new("Go on.",Ella,nil, function()
		for i,v in pairs(World.Map[25].npcs) do
			if v.f == "Sean" then
				v.i = 47
			end
		end
	end),
	Text.new("Go on.",Ella),
},1)

World.Dialogue[French][42] = Dialogue.new({
	Text.new("You actually did it?",Brian),
	Text.new("Wait...",Varisa),
	Text.new("I suppose I should pay you.",Brian),
	Text.new("You weren't before?",Varisa),
	Text.new("I'm a better person than that.",Brian),
	Text.new("Okay",Varisa),
	Text.new("Take this check.",Brian,nil,function()
		Story.set("Brian_Trash_4",true)
	end),
	Text.new("Thanks I guess",Varisa),
},1)

World.Dialogue[French][43] = Dialogue.new({
	Text.new("Go away.",Fredrick),
},1)

World.Dialogue[French][44] = Dialogue.new({
	Text.new("You, there.",Karina),
	Text.new("Don't you roll your eyes at me.",Karina),
	Text.new("I have something important to say.",Karina),
	Text.new("More fire and brimstone?",Varisa),
	Text.new("Not necessarily, but...",Karina),
	Text.new("Everyone here is a sicko.",Karina),
	Text.new("And you wonder why people hate you.",Varisa),
	Text.new("It's persecution I say.",Karina),
	Text.new("Anything else new to say?",Varisa),
	Text.new("What more is there to say?",Karina),
	Text.new("What's that.",Varisa),
	Text.new("My crucifix?",Karina),
	Text.new("You can have it if you want.",Karina),
	Text.new("I have a bunch lying around.",Karina),
	Text.new("I guess.",Varisa,nil,function()
		Story.set("Karina_1",true)
	end),
	Text.new("Save your soul",Karina),
	Text.new("I'll be waiting.",Karina),
},1)

World.Dialogue[French][45] = Dialogue.new({
	Text.new("Hey.",Lassie),
	Text.new("Hey",Varisa),
	Text.new("I need your help baking.",Lassie),
	Text.new("What do you need?",Varisa),
	Text.new("Uhh...",Lassie),
	Text.new("Rachel always knew were everything was...",Lassie),
	Text.new("Let me try to remember...",Lassie),
	Text.new("I need a cup of milk.",Lassie),
	Text.new("It should be in the fridge.",Lassie,nil,function ()
		Story.set("Lassie_Baking_1",true)
	end),
	Text.new("Sure.",Varisa),
	Text.new("Alright.",Lassie),
	Text.new("You got it?",Lassie),
},1)

World.Dialogue[French][46] = Dialogue.new({
	Text.new("Hey.",Lassie),
	Text.new("Hey",Varisa),
},1)

World.Dialogue[French][47] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("You heard what she said.",Sean),
	Text.new("Now if you don't mind, we're busy.",Sean),
	Text.new("Go on scram.",Sean),
},1)

World.Dialogue[French][48] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("I'm not much help too.",Ella),
	Text.new("I don't know anything.",Ella),
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
	Text.new("Who's package is that?",Jami,nil,function(npc)
		npc.i = 59
	end),
},1)

World.Dialogue[French][52] = Dialogue.new({
	Text.new("Who's package is that?",Jami),
	Text.new("Zoey's",Varisa),
	Text.new("Hmm... Intresting.",Jami),
	Text.new("So i'm gonna take it now...",Varisa),
	Text.new("Sure it's not my package.",Jami,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[French][53] = Dialogue.new({
	Text.new("Who's package was that?",Jami),
	Text.new("Zoey's",Varisa),
	Text.new("Hmm... Intresting.",Jami),
	Text.new("Tell her I appologize for the inconvenience.",Jami,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[French][54] = Dialogue.new({
	Text.new("Damn, always on a Tuesday, huh",Rachel),
	Text.new("I'd suggest you check what's going on outside",Rachel),
	Text.new("...",Rachel),
},1)

World.Dialogue[French][55] = Dialogue.new({
	Text.new("If only you played acoustic",Tracey),
	Text.new("You should probably check what's going on outside",Tracey),
	Text.new("...",Tracey),
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
	Text.new("Say, I need your help again",Jami),
	Text.new("What the hell is wrong with you?", Varisa),
	Text.new("Huh?",Jami),
	Text.new("It's just part of the method.",Jami),
	Text.new("Turn the lights back on.",Varisa),
	Text.new("In a bit, I need you to measure in the dark.",Jami),
	Text.new("What?",Varisa),
	Text.new("Take that Wray and use it in the dark.",Jami),
	Text.new("Is this why you had to cut the power?",Varisa),
	Text.new("Yes.",Jami),
	Text.new("You're insane.",Varisa),
	Text.new("Every genius is.",Jami),
	Text.new("I need you to record 3 more samples.",Jami,nil,function()
		Story.set("Jami_Experiment_2_1",true)
	end),
	Text.new("Come back with those samples and i'll fix the power.",Jami),
	Text.new("Fine....",Varisa),
	Text.new("Tick tock.",Jami),
},1)

World.Dialogue[French][58] = Dialogue.new({
	Text.new("Say, I need your help",Jami),
	Text.new("What the hell is wrong with you?", Varisa),
	Text.new("Huh?",Jami),
	Text.new("You're insane.",Varisa),
	Text.new("Turn the lights back on.",Varisa),
	Text.new("In a bit.",Jami),
	Text.new("I don't have a 'bit'",Varisa),
	Text.new("Here, this tool will explain everything.",Jami,nil,function()
		Story.set("Jami_Experiment_2_1",true)
	end),
	Text.new("I need you to record 3 samples.",Jami),
	Text.new("Take samples far enough from each other.",Jami),
	Text.new("Come back with those samples and i'll fix the power.",Jami),
	Text.new("Tick tock.",Jami),
},1)

World.Dialogue[French][59] = Dialogue.new({
	Text.new("I dunno.",Varisa),
	Text.new("It just showed up today for some reason.",Jami),
	Text.new("Odd.",Varisa),
	Text.new("Indeed.",Jami,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[French][60] = Dialogue.new({
	Text.new("Say...",Jami),
	Text.new("If you don't mind, I need some help.",Jami),
	Text.new("Sure....",Varisa),
	Text.new("Uhhh.... i'm pretty sure you barely passed physics?",Jami),
	Text.new("Yeah.",Varisa),
	Text.new("Okay...",Jami),
	Text.new("So, there's this energy",Jami),
	Text.new("And I've made a detector for it",Jami),
	Text.new("Here",Jami,nil,function()
		Story.set("Jami_Experiment_1_1",true)
	end),
	Text.new("I need you to record 3 samples.",Jami),
	Text.new("I have a feeling it's based on...",Jami),
	Text.new("the number of people around.",Jami),
	Text.new("Take samples far enough from each other.",Jami),
	Text.new("Thanks for the help.",Jami),
},1)

World.Dialogue[French][61] = Dialogue.new({
	Text.new("You're done?",Jami),
	Text.new("Yep.",Varisa),
	Text.new("Great, let me look at what you recorded.",Jami),
	Text.new("............",Jami),
	Text.new("Wow, intresting",Jami),
	Text.new("It seems like that's not the variable.",Jami),
	Text.new("Say, keep it with you and record anything else you find.",Jami,nil,function()
		Story.set("Jami_Experiment_1_3",true)
	end),
	Text.new("Have fun, go nuts.",Jami),
},1)

World.Dialogue[French][62] = Dialogue.new({
	Text.new("They still had it?",Lassie),
},1)

World.Dialogue[French][63] = Dialogue.new({
	Text.new("Say, I need your help again",Jami),
	Text.new("What the hell is wrong with you?", Varisa),
	Text.new("Huh?",Jami),
	Text.new("It's just part of the method.",Jami),
	Text.new("Turn the lights back on.",Varisa),
	Text.new("In a bit, I need you to measure in the dark.",Jami),
	Text.new("What?",Varisa),
	Text.new("Take that Wray and use it in the dark.",Jami),
	Text.new("Is this why you had to cut the power?",Varisa),
	Text.new("Yes.",Jami),
	Text.new("You're insane.",Varisa),
	Text.new("Every genius is.",Jami),
	Text.new("I need you to actually record 3 more samples.",Jami,nil,function()
		Story.set("Jami_Experiment_2_1",true)
	end),
	Text.new("Come back with those samples and i'll fix the power.",Jami),
	Text.new("Don't just leave like last time.",Jami),
	Text.new("Fine....",Varisa),
	Text.new("Tick tock.",Jami),
},1)

World.Dialogue[French][64] = Dialogue.new({
	Text.new("What the hell is going on?",Lassie),
	Text.new("I just saw everyone here trying to call for help.",Lassie),
	Text.new("Cool.",Varisa),
	Text.new("...",Lassie),
},1)

World.Dialogue[French][65] = Dialogue.new({
	Text.new("I wish the power company would come sooner.",Zach),
	Text.new("Same.",Varisa),
	Text.new("You should stay for the demonstration.",Zach),
	Text.new("Maybe.",Varisa),
	Text.new("...",Zach),
},1)

World.Dialogue[French][66] = Dialogue.new({
	Text.new("I hate those two.",Mollie),
	Text.new("Nothing about the power?",Varisa),
	Text.new("Huh, what?",Mollie),
	Text.new("The reason why we're outside?",Varisa),
	Text.new("Oh the power.",Mollie),
	Text.new("...",Varisa),
	Text.new("...",Mollie),
	Text.new("I mean, just look at them.",Mollie),
	Text.new("...",Mollie),
},1)

World.Dialogue[French][67] = Dialogue.new({
	Text.new("What a day.",Sean),
	Text.new("A day alright.",Varisa),
	Text.new("...",Sean),
},1)

World.Dialogue[French][68] = Dialogue.new({
	Text.new("God, I hate that bitch.",Ella),
	Text.new("I HEARD THAT!",Mollie),
	Text.new("The power?",Varisa),
	Text.new("What about the power?",Ella),
	Text.new("Okay...",Varisa),
	Text.new("...",Ella),
},1)

World.Dialogue[French][69] = Dialogue.new({
	Text.new("They really gotta upgrade the power here.",Brian),
	Text.new("Yes.",Varisa),
	Text.new("...",Brian),
},1)

World.Dialogue[French][70] = Dialogue.new({
	Text.new("It never hurts to leave the house.",Vivian),
	Text.new("Yeah, but the power coming back would be nice.",Varisa),
},1)

World.Dialogue[French][71] = Dialogue.new({
	Text.new("I hate those two.",Mollie),
	Text.new("Nothing about the power?",Varisa),
	Text.new("It ruined my plans too.",Mollie),
	Text.new("What plans?",Varisa),
	Text.new("Nothing that concerns you...",Mollie),
	Text.new("...",Varisa),
	Text.new("...",Mollie),
},1)

World.Dialogue[French][72] = Dialogue.new({
	Text.new("It really hurts to leave the house.",Vivian),
	Text.new("Yeah, the power coming back would be nice.",Varisa),
	Text.new("Just a few more minutes and I would have been done.",Vivian),
	Text.new("...",Vivian),
},1)

World.Dialogue[French][73] = Dialogue.new({
	Text.new("The house reeked of something recently.",Brian),
	Text.new("I could have sworn the trash was taken out.",Brian),
	Text.new("Odd. Anything else out of the ordinary.",Varisa),
	Text.new("Muffuled voices, but that might just be all those...",Brian),
	Text.new("Crime shows Vivian watches.",Brian),
	Text.new("Maybe she could help you with that mystery of yours.",Brian),
	Text.new("Maybe...",Varisa),
	Text.new("...",Brian),
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
	Text.new("Cool, but wasn't yesterday exercise day?",Varisa),
	Text.new("It's a German thing, you would not understand.",Fredrick),
	Text.new("Okay.",Varisa),
	Text.new("I understand pudding.",Varisa),
	Text.new("You seem too.",Fredrick),
},1)
