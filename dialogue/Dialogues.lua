World.Dialogue[English] = {}

World.Dialogue[English][-21] = Dialogue.new({
	Text.new("There's no power, the food is rotting.",Varisa),
},1)

World.Dialogue[English][-20] = Dialogue.new({
	Text.new("There's no power.",Varisa),
},1)

World.Dialogue[English][-19] = Dialogue.new({
	Text.new("Nothing left.",Varisa),
},1)

World.Dialogue[English][-18] = Dialogue.new({
	Text.new("Found something.",Varisa,nil,function(npc)
		Story.set("Find",true,npc)
		Story.set("Find",false)
	end),
},1)

World.Dialogue[English][-17] = Dialogue.new({
	Text.new("Got the box.",Varisa,nil,function()
		Story.set("Zoey_Errands_2",true)
	end),
},1)

World.Dialogue[English][-16] = Dialogue.new({
	Text.new("What a nice box.",Varisa),
},1)

World.Dialogue[English][-15] = Dialogue.new({
	Text.new("Got the milk.",Varisa,nil,function()
		Story.set("Lassie_Baking_2",true)
	end),
	Text.new("There's no milk.",Varisa),
},1)

World.Dialogue[English][-14] = Dialogue.new({
	Text.new("There's a lot of stuff.",Varisa),
},1)

World.Dialogue[English][-13] = Dialogue.new({
	Text.new("Threw the trash away",Varisa,nil,function()
		Story.set("Brian_Trash_3",true)
	end),
	Text.new("It's a trash can.",Varisa),
},1)

World.Dialogue[English][-12] = Dialogue.new({
	Text.new("It's a trash can.",Varisa),
},1)

World.Dialogue[English][-11] = Dialogue.new({
	Text.new("It's trash",Varisa,nil,function()
		Story.set("Brian_Trash_2",true)
	end),
},1)

World.Dialogue[English][-10] = Dialogue.new({
	Text.new("Next Day?",Varisa),
	Text.new("Are you sure?",Varisa),
	Text.new("Zzzz...",Varisa,nil,function()
		World.AfterEffect = function()
			if bs then
				bs:stop()
			end
			Days.loadDay(GameDay + 1)
		end
	end),
},0)

World.Dialogue[English][-9] = Dialogue.new({
	Text.new("It's an engagement ring?",Varisa,nil,function()
		Story.set("Mollie_Breakup_4",true)
	end),
	Text.new("It's an engagement ring?",Varisa),
},1)

World.Dialogue[English][-8] = Dialogue.new({
	Text.new("There's something in the bookshelf.",Varisa,nil,function()
		Story.set("Mollie_Breakup_3",true)
	end),
	Text.new("There's something in the bookshelf.",Varisa),
},1)

World.Dialogue[English][-7] = Dialogue.new({
	Text.new("That's too disgusting to touch.",Varisa),
},1)

World.Dialogue[English][-6] = Dialogue.new({
	Text.new("There's a code in this box.",Varisa,nil,function()
		Story.set("Mollie_Breakup_2",true)
	end),
	Text.new("There's a code in this box.",Varisa),
},1)

World.Dialogue[English][-5] = Dialogue.new({
	Text.new("There's nothing in this box.",Varisa),
},1)

World.Dialogue[English][-4] = Dialogue.new({
	Text.new("There's food in here.",Varisa,nil,function()
		-- give random food
	end),
	Text.new("There's food in here.",Varisa),
},1)

World.Dialogue[English][-3] = Dialogue.new({
	Text.new("It's locked, I need a code.",Varisa),
},1)

World.Dialogue[English][-2] = Dialogue.new({
	Text.new("There's nothing here.",Varisa),
},1)

World.Dialogue[English][-1] = Dialogue.new({
	Text.new("I can't use this.",Varisa),
},1)

World.Dialogue[English][0] = Dialogue.new({
	Text.new("They're not saying much.",Varisa),
	Text.new("Their Dialogue might be broken.",Varisa),
},0)

World.Dialogue[English][1] = Dialogue.new({
	Text.new("Hey",Varisa),
	Text.new("Hey Var!",Tracey),
	Text.new("Does your mom still have any cookies?",Varisa),
	Text.new("Should be some inside",Tracey),
	Text.new("Sweet!",Varisa),
},0,function()
	World.nextMap(World.Map[2])
	World.AfterEffect = function()
		setPlr(10.5,12.5)
	end
end)

World.Dialogue[English][2] = Dialogue.new({
	Text.new("Hey Ms. Drew",Varisa),
	Text.new("Hey Varisa",Zoey),
	Text.new("Is your mom still around?",Zoey),
	Text.new("Nope, haven't seen her",Varisa),
	Text.new("That's so unlike her",Zoey),
	Text.new("I hope she's okay",Zoey),
	Text.new("yeah...",Varisa),
	Text.new("....",Zoey),
},1)

World.Dialogue[English][3] = Dialogue.new({
	Text.new("This Just in!",TV_B),
	Text.new("Still one person missing",TV_B),
	Text.new("Experts Weigh in...",TV_B),
	Text.new("Are satanists responsible?",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)

World.Dialogue[English][4] = Dialogue.new({
	Text.new("Folks....",TV_B),
	Text.new("Nothing out of the ordinary just happened.",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)

World.Dialogue[English][5] = Dialogue.new({
	Text.new("Hi Var!",Rachel),
	Text.new("Hey",Varisa),
	Text.new("You think you could stop by my house?",Rachel),
	Text.new("Yeah, I could stop by.",Varisa),
	Text.new("Great.",Rachel),
	Text.new("I need you to ask my mom for the toolbox.",Rachel),
	Text.new("Alright.",Varisa),
	Text.new("You got it?",Rachel,nil,function()
		Story.set("Toolbox_Wilkie_1",true)
	end),
	Text.new("You got it?",Rachel),
},1)

require("/dialogue/general/mailboxes")

World.Dialogue[English][18] = Dialogue.new({
	Text.new("Hello Varisa.",Wilkie),
	Text.new("Hey.",Varisa),
	Text.new("What brings you over here today?",Wilkie),
	Text.new("Mrs. Fisher said you had her toolbox.",Varisa),
	Text.new("She needs it back?",Wilkie),
	Text.new("No no no.",Varisa),
	Text.new("I just need something from it.",Varisa),
	Text.new("Oh, Okay.",Wilkie),
	Text.new("What do you need then?",Wilkie),
	Text.new("Uhh....",Varisa),
	Text.new("Can I get back to you?",Varisa),
	Text.new("Sure, take your time",Wilkie,nil,function()
		-- Change Rachel's Dialogue Number
		print("Look, i'm doing something")
		Story.set("Toolbox_Wilkie_2",true)
	end),
	Text.new("Sure, take your time",Wilkie),
},1)

-- Todo: Story Flow chart / Dialogue
World.Dialogue[English][19] = Dialogue.new({
	Text.new("Hello Varisa.",Karina),
},1)

World.Dialogue[English][20] = Dialogue.new({
	Text.new("Hello Varisa.",Zach),
},1)

World.Dialogue[English][21] = Dialogue.new({
	Text.new("It's been days.",Jami),
	Text.new("I can't take this any longer.",Jami),
	Text.new("For what?",Varisa),
	Text.new("It's none of your buisness.",Jami),
	Text.new("Okay, I guess...",Varisa),
	Text.new("Though, have you seen Karly around?",Varisa),
	Text.new("She's still missing?",Jami),
	Text.new("And still no leads?",Jami),
	Text.new("yeah...",Varisa),
	Text.new("Are you in her will?",Jami),
	Text.new("what?",Varisa),
	Text.new("What the fuck is wrong with you?!",Varisa),
	Text.new("Sorry",Jami),
	Text.new("I see that was a bit insensitive",Jami),
	Text.new("You think?",Varisa),
	Text.new("Here take this.",Jami,nil,function()
		Story.set("Screw_Drive_Jami",true)
	end), -- She gives some side quest item
	Text.new("My appologies again.",Jami),
},1)

World.Dialogue[English][22] = Dialogue.new({
	Text.new("Hello Varisa.",Mollie),
},1)

World.Dialogue[English][23] = Dialogue.new({
	Text.new("Hey Varisa.",Lassie),
	Text.new("Hey.",Varisa),
	Text.new("Do you know where the toolbox is?",Varisa),
	Text.new("I think i gave it to Wilkie a few days ago...",Lassie),
	Text.new("Oh.",Varisa),
	Text.new("Yeah, sorry.",Lassie),
	Text.new("They should still have it.",Lassie),
},1)

World.Dialogue[English][24] = Dialogue.new({
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

World.Dialogue[English][25] = Dialogue.new({
	Text.new("Hello Varisa.",Vivian),
},1)

World.Dialogue[English][26] = Dialogue.new({
	Text.new("Varisa?",Sean),
	Text.new("Hey...",Varisa),
},1)

World.Dialogue[English][27] = Dialogue.new({
	Text.new("Who the hell are you?",Ella),
},1)

World.Dialogue[English][28] = Dialogue.new({
	Text.new("Hey Varisa...",Brian),
	Text.new("Uhh... Yeah.",Varisa),
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

World.Dialogue[English][29] = Dialogue.new({
	Text.new("Did you get the toolbox?",Rachel),
	Text.new("Wilkie's still using it.",Varisa),
	Text.new("But he'll let us borrow the tool you need.",Varisa),
	Text.new("Okay.",Rachel),
	Text.new("Ask him for the screwdriver.",Rachel),
	Text.new("Or better yet, take my guitar.",Rachel,nil,function()
		Story.set("Rachel_Guitar_1",true)
	end),
	Text.new("You're the one that's gonna fix it anyway.",Rachel),
	Text.new("I'm counting on you.",Rachel),
},1)

World.Dialogue[English][30] = Dialogue.new({
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

World.Dialogue[English][31] = Dialogue.new({
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

World.Dialogue[English][32] = Dialogue.new({
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

World.Dialogue[English][33] = Dialogue.new({
	Text.new("There's a lot more people than usual.",Tracey),
	Text.new("You could say.",Varisa),
	Text.new("What's Mollie doing at the park",Tracey),
	Text.new("Playing in the sand?",Varisa),
	Text.new("Isn't she like what, 82?",Tracey),
	Text.new("27.",Varisa),
	Text.new("Wouldn't books be more her style?",Tracey),
	Text.new("English teachers can do other things...",Varisa),
	Text.new("Like?",Tracey),
	Text.new("Playing in the sand.",Varisa),
	Text.new("...",Tracey),
},1)

World.Dialogue[English][34] = Dialogue.new({
	Text.new("Stay away from me.",Fredrick),
	Text.new("Geez, sorry.",Varisa),
	Text.new("...",Fredrick),
},1)

World.Dialogue[English][35] = Dialogue.new({
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

World.Dialogue[English][36] = Dialogue.new({
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

World.Dialogue[English][37] = Dialogue.new({
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

World.Dialogue[English][38] = Dialogue.new({
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

World.Dialogue[English][39] = Dialogue.new({
	Text.new("This just in...",TV_B),
	Text.new("Police are now offering $5000...",TV_B),
	Text.new("To anyone with information on Mrs. Carmel.",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)

World.Dialogue[English][40] = Dialogue.new({
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

World.Dialogue[English][41] = Dialogue.new({
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

World.Dialogue[English][42] = Dialogue.new({
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

World.Dialogue[English][43] = Dialogue.new({
	Text.new("Go away.",Fredrick),
},1)

World.Dialogue[English][44] = Dialogue.new({
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

World.Dialogue[English][45] = Dialogue.new({
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

World.Dialogue[English][46] = Dialogue.new({
	Text.new("Hey.",Lassie),
	Text.new("Hey",Varisa),
},1)

World.Dialogue[English][47] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("You heard what she said.",Sean),
	Text.new("Now if you don't mind, we're busy.",Sean),
	Text.new("Go on scram.",Sean),
},1)

World.Dialogue[English][48] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("I'm not much help too.",Ella),
	Text.new("I don't know anything.",Ella),
},1)

World.Dialogue[English][49] = Dialogue.new({
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

World.Dialogue[English][50] = Dialogue.new({
	Text.new("You found it!",Zoey),
	Text.new("Where was it?",Zoey),
	Text.new("It was out by Jami's house.",Varisa),
	Text.new("That's strange...",Zoey),
	Text.new("But at least I have my package.",Zoey),
	Text.new("You and Tracey stay safe now.",Zoey),
},1)

World.Dialogue[English][51] = Dialogue.new({
	Text.new("Who's package is that?",Jami,nil,function(npc)
		npc.i = 59
	end),
},1)

World.Dialogue[English][52] = Dialogue.new({
	Text.new("Who's package is that?",Jami),
	Text.new("Zoey's",Varisa),
	Text.new("Hmm... Intresting.",Jami),
	Text.new("So i'm gonna take it now...",Varisa),
	Text.new("Sure it's not my package.",Jami,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[English][53] = Dialogue.new({
	Text.new("Who's package was that?",Jami),
	Text.new("Zoey's",Varisa),
	Text.new("Hmm... Intresting.",Jami),
	Text.new("Tell her I appologize for the inconvenience.",Jami,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[English][54] = Dialogue.new({
	Text.new("Damn, always on a Tuesday, huh",Rachel),
	Text.new("I'd suggest you check what's going on outside",Rachel),
	Text.new("...",Rachel),
},1)

World.Dialogue[English][55] = Dialogue.new({
	Text.new("If only you played acoustic",Tracey),
	Text.new("I'd suggest you check what's going on outside",Tracey),
	Text.new("...",Tracey),
},1)

World.Dialogue[English][56] = Dialogue.new({
	Text.new("If only you played acoustic",Tracey),
	Text.new("I'd suggest you check what's going on outside",Tracey),
	Text.new("...",Tracey),
},1)

World.Dialogue[English][57] = Dialogue.new({
	Text.new("If only you played acoustic",Tracey),
	Text.new("I'd suggest you check what's going on outside",Tracey),
	Text.new("...",Tracey),
},1)

World.Dialogue[English][58] = Dialogue.new({
	Text.new("If only you played acoustic",Tracey),
	Text.new("I'd suggest you check what's going on outside",Tracey),
	Text.new("...",Tracey),
},1)

World.Dialogue[English][59] = Dialogue.new({
	Text.new("I dunno.",Varisa),
	Text.new("It just showed up today for some reason.",Jami),
	Text.new("Odd.",Varisa),
	Text.new("Indeed.",Jami,nil,function(npc)
		npc.i = 60
	end),
},1)

World.Dialogue[English][60] = Dialogue.new({
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

World.Dialogue[English][61] = Dialogue.new({
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


