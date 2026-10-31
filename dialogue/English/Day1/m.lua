-- Band Practice
World.Dialogue[English][1] = Dialogue.new({
	Text.new("Hey guys.",Varisa),
	Text.new("Hey Varisa.",Tracey),
	Text.new("Hey.",Rachel),
	Text.new("Varisa, you're not going to beleive who came over.",Tracey),
	Text.new("What?",Varisa),
	Text.new("Someone finnaly booked us for a gig!",Tracey),
	Text.new("I'm so excited!",Tracey),
	Text.new("EEEEEEEEEE!",Tracey),
	Text.new("Chill out, we still gotta practice.",Rachel),
	Text.new("Yeah.",Varisa),
	Text.new("When is the gig?",Varisa),
	Text.new("This Thursday.",Tracey),
	Text.new("Intresting.",Varisa),
	Text.new("What kind of event is this?",Varisa),
	Text.new("A birthday party.",Tracey),
	Text.new("Really?",Varisa),
	Text.new("A gig is a gig.",Varisa),
	Text.new("We'll be here when you're ready to practice.",Rachel),
},1)

-- Brian Trash
World.Dialogue[English][1] = Dialogue.new({
	Text.newAnimated("Hey Varisa...",Brian,0),
	Text.newAnimatedLeft("Uhh... Yeah.",Varisa),
	Text.newAnimated("I'm very busy right now...",Brian,0),
	Text.newAnimated("And uhh, Vivian told me to take out the trash.",Brian,0),
	Text.newAnimated("You wouldn't mind taking it out for me?",Brian,0),
	Text.newAnimatedLeft("But aren't you just standing around?",Varisa),
	Text.newAnimated("I'm very busy, you wouldn't understand.",Brian,0),
	Text.newAnimatedLeft("Yeah me too.",Varisa),
	Text.newAnimated("Too busy for 150?",Brian,1),
	Text.newAnimatedLeft("You're bluffing.",Varisa),
	Text.newAnimated("Your loss, I guess.",Brian,0),
	Text.newAnimatedLeft("Where's the trash?",Varisa),
	Text.newAnimated("Backyard, and make it quick.",Brian,0,nil,function()
		Story.set("Brian_Trash_1",true)
	end),
},1)

-- Fredrick Excersise
World.Dialogue[English][1] = Dialogue.new({
	Text.new("...",Varisa),
},1)

-- Sean / Ella park
World.Dialogue[English][1] = Dialogue.new({
	Text.new("...",Varisa),
},1)

-- Zach gardening
World.Dialogue[English][1] = Dialogue.new({
	Text.new("...",Varisa),
},1)

-- Jami's Package
World.Dialogue[English][1] = Dialogue.new({
	Text.new("...",Varisa),
},1)

-- News Broadcast

-- Cooking Show
