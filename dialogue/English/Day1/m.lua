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

World.Dialogue[English][2] = Dialogue.new({
	Text.new("Hey Ms. Drew.",Varisa),
	Text.new("Oh, hi Varisa!",Zoey),
	Text.new("How's it going?",Zoey),
	Text.new("Nothing much..",Varisa, nil, function(npc)
		if Story.get("Know_Gig") then
			npc.i = 2
		else
			npc.i = 3
		end
	end),
},1)

World.Dialogue[English][2] = Dialogue.new({
	Text.new("Did Tracey already tell you about our next show?",Varisa),
	Text.new("That's so cool! You guys are a real band now.",Zoey, nil, function(npc)
		npc.i = 4
	end),
},1)

World.Dialogue[English][3] = Dialogue.new({
	Text.new("Well, that's alright. You gotta have fun while you're not in college yet.",Zoey, nil, function(npc)
		npc.i = 4
	end),
},1)

World.Dialogue[English][4] = Dialogue.new({
	Text.new("Yeah hehe.",Varisa),
},1)

-- Brian Trash
World.Dialogue[English][5] = Dialogue.new({
	Text.new("Yo uh...",Brian),
	Text.new("Uhh... Yeah?",Varisa),
	Text.new("I need your help with something.",Brian),
	Text.new("What?",Varisa),
	Text.new("I want you to take out the trash in the back.",Brian),
	Text.new("I'll pay you if you're intrested. Don't ask any questions.",Brian),
	Text.new("Hmm..(Seems kinda sketchy. I'd like some quick buck, though.)",Varisa),
	Text.new("I guess.",Varisa,nil,function()
		Story.set("Brian_Trash_1",true)
	end),
	Text.new("Okay.",Brian),
},1)

World.Dialogue[English][6] = Dialogue.new({
	Text.new("Take this check.",Brian,nil,function()
		Story.set("Brian_Trash_4",true)
	end),
	Text.new("...",Brian),
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
