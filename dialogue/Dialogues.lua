World.Dialogue[English] = {}

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
	Text.new("5 Confirmed Deaths in relation to Serial Killer",TV_B),
	Text.new("Experts Weigh in...",TV_B),
	Text.new("Are they a satanist?",TV_B),
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
	Text.new("Hello Varisa.",Fredrick),
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
	Text.new("Hello Varisa.",Brian),
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
	Text.new("You're the one thats gonna fix it anyway.",Rachel),
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
	Text.new("Surely, you could eaisly find someone else.",Varisa),
	Text.new("Sean's not just anyone, okay.",Mollie),
	Text.new("So are you going to do it or not?",Mollie),
	Text.new("It would make me like you better if you did.",Mollie),
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
