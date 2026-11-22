-- Brian Flyers

World.Dialogue[English][20] = Dialogue.new({
	Text.new("I didn't get your name...",Brian),
	Text.new("It's Varisa.",Varisa),
	Text.new("Like Marisa with a V.",Varisa),
	Text.new("Well, I'm Brian and it's great to see you again.",Brian),
	Text.new("I assume you have another job.",Varisa),
	Text.new("Yeah, hehe.",Brian),
	Text.new("I'm trying to suprise my girlfriend for her birthday.",Brian),
	Text.new("I already booked a band and got decorations.",Brian),
	Text.new("But I need to hand out flyers.",Brian),
	Text.new("I'd do it right now, but she'd be back any moment now.",Brian),
	Text.new("So, I need your help handing them out.",Brian),
	Text.new("I'll pay you again if you like?",Brian),
	Text.new("Hmm.",Varisa),
},1,nil,{{text = "Sure.", next = 21},{text = "No, thank you.", next = 22}})

World.Dialogue[English][21] = Dialogue.new({
	Text.new("Sure.",Varisa,nil,function()
		Story.set("Brian_Flyer_1",true)
	end),
	Text.new("Here, you go.",Brian),
	Text.new("Stick these in as many mailboxes as you can.",Brian),
	Text.new("Thanks so much.",Brian),
},1)

World.Dialogue[English][22] = Dialogue.new({
	Text.new("No, thank you.",Varisa),
	Text.new("Fair enough, you're a busy woman.",Brian),
	Text.new("...",Brian),
},1)

World.Dialogue[English][23] = Dialogue.new({
	Text.new("Take this check.",Brian,nil,function()
		-- Story.set("Brian_Flyer_3",true)
	end),
	Text.new("...",Brian),
},1)

World.Dialogue[English][24] = Dialogue.new({
	Text.new("Yo uh...",Brian),
	Text.new("Uhh... Yeah?",Varisa),
	Text.new("I need your help with something.",Brian),
	Text.new("What?",Varisa),
	Text.new("I'm trying to suprise my girlfriend for her birthday.",Brian),
	Text.new("I already booked a band and got decorations.",Brian),
	Text.new("But I need to hand out flyers.",Brian),
	Text.new("I'd do it right now, but she'd be back any moment now.",Brian),
	Text.new("So, I need your help handing them out.",Brian),
	Text.new("I'll pay you if you're intrested.",Brian),
	Text.new("Hmm.",Varisa),
},1,nil,{{text = "Sure.", next = 21},{text = "No, thank you.", next = 22}})

-- Lassie Cooking

-- Wilkie Park

-- Fredrick Park