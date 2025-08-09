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
	Text.new("You got it?",Rachel),
},1)

require("/dialogue/general/mailboxes")

World.Dialogue[English][18] = Dialogue.new({
	Text.new("Hello Varisa.",Wilkie),
	Text.new("Hey.",Varisa),
	Text.new("What brings you over here today?.",Wilkie),
	Text.new("Mrs. Fisher said you had her toolbox.",Varisa),
	Text.new("She needs it back?",Wilkie),
	Text.new("No no no.",Varisa),
	Text.new("I just need something from it.",Varisa),
	Text.new("Oh, Okay.",Wilkie),
	Text.new("What do you need then?",Wilkie),
	Text.new("Uhh....",Varisa),
	Text.new("Can I get back to you?",Varisa),
	Text.new("Sure take your time",Wilkie,nil,function()
		-- Change Rachel's Dialogue Number
		print("Look, i'm doing something")
	end),
	Text.new("Sure take your time",Wilkie),
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
	Text.new("Though, have you seen Zoey around?",Varisa),
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
	Text.new("Hello Varisa.",Sean),
},1)

World.Dialogue[English][27] = Dialogue.new({
	Text.new("Hello Varisa.",Ella),
},1)

World.Dialogue[English][28] = Dialogue.new({
	Text.new("Hello Varisa.",Brian),
},1)
