-- Band Practice
World.Dialogue[English][1] = Dialogue.new({
	Text.new("Hey guys.",Varisa),
	Text.new("Hey Varisa.",Tracey),
	Text.new("Hey.",Rachel),
	Text.new("I'm sorry i'm late, but you understand?.",Varisa),
	Text.new("Yeah it's no big deal.",Tracey),
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
