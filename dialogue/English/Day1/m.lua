-- Band Practice
World.Dialogue[English][1] = Dialogue.new({
	Text.new("Hey guys.",Varisa),
	Text.new("Hey Varisa.",Tracey),
	Text.new("Hey.",Rachel),
	Text.new("Varisa, you're not going to beleive who came over.",Tracey),
	Text.new("What?",Varisa),
	Text.new("Someone finnaly booked us for a gig!",Tracey,nil,function()
		Story.set("Know_Gig",true)
	end),
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
			npc.i = 3
		else
			npc.i = 4
		end
	end),
},1)

World.Dialogue[English][3] = Dialogue.new({
	Text.new("Did Tracey already tell you about our next show?",Varisa),
	Text.new("That's so cool! You guys are a real band now.",Zoey, nil, function(npc)
		npc.i = 5
	end),
},1)

World.Dialogue[English][4] = Dialogue.new({
	Text.new("Well, that's alright. You gotta have fun while you're not in college yet.",Zoey, nil, function(npc)
		npc.i = 4
	end),
},1)

World.Dialogue[English][5] = Dialogue.new({
	Text.new("Yeah hehe.",Varisa),
},1)

-- Brian Trash
World.Dialogue[English][6] = Dialogue.new({
	Text.new("Yo uh...",Brian),
	Text.new("Uhh... Yeah?",Varisa),
	Text.new("I need your help with something.",Brian),
	Text.new("What?",Varisa),
	Text.new("I want you to take out the trash in the back.",Brian),
	Text.new("I'll pay you if you're intrested. Don't ask any questions.",Brian),
	Text.new("Hmm..(Seems kinda sketchy. I'd like some quick buck, though.)",Varisa),
	
},1,nil,{{text = "I guess.", next = 7},{text = "No, thank you.", next = 8}})

World.Dialogue[English][7] = Dialogue.new({
	Text.new("I guess.",Varisa,nil,function()
		Story.set("Brian_Trash_1",true)
	end),
	Text.new("Okay.",Brian),
},1)

World.Dialogue[English][8] = Dialogue.new({
	Text.new("No, thank you.",Varisa),
	Text.new("Okay.",Brian),
},1)

World.Dialogue[English][9] = Dialogue.new({
	Text.new("Take this check.",Brian,nil,function()
		Story.set("Brian_Trash_4",true)
	end),
	Text.new("...",Brian),
},1)

-- Fredrick Excersise
World.Dialogue[English][10] = Dialogue.new({
	Text.new("What are you doing outside?",Varisa),
	Text.new("None of your buisness!",Fredrick),
	Text.new("Okay...",Varisa),
	Text.new("I'm excersising.",Fredrick),
},1,nil,{{text = "Can I join.", next = 11},{text = "Okay.", next = 12}})

World.Dialogue[English][11] = Dialogue.new({
	Text.new("Can I join.",Varisa,nil,function()
		Story.set("Fredrick_Exercise_1",true)
	end),
},1)

World.Dialogue[English][12] = Dialogue.new({
	Text.new("Okay.",Varisa),
	Text.new("You don't have to stay.",Fredrick),
},1)

-- Sean / Ella park
World.Dialogue[English][13] = Dialogue.new({
	Text.new("Go away.",Sean),
	Text.new("We're busy.",Ella),
	Text.new("...",Varisa),
},1)

-- Zach gardening
World.Dialogue[English][14] = Dialogue.new({
	Text.new("Who are the flowers for?",Varisa),
	Text.new("My wife loves these ones.",Zach),
	Text.new("Cool.",Varisa),
},1)

-- Jami's Package
World.Dialogue[English][15] = Dialogue.new({
	Text.new("Hey.",Varisa),
	Text.new("Hello.",Jami),
	Text.new("Why are you just standing around?",Varisa),
	Text.new("I'm just waiting for a package.",Jami),
	Text.new("Intresting.",Varisa),
	Text.new("How's life after high school?",Jami),
	Text.new("Pretty good.",Varisa),
	Text.new("It felt like just yesterday, you were disrupting my class.",Jami),
	Text.new("Ahh, memories.",Jami),
	Text.new("...",Varisa),
},1)

-- News Broadcast
World.Dialogue[English][16] = Dialogue.new({
	
},1)

-- Cooking Show
World.Dialogue[English][17] = Dialogue.new({
	Text.new("Welcome back everyone.",TV_T),
	Text.new("Today we're going to be watching as",TV_T),
	Text.new("These four contestants bake pumpkin pie.",TV_T),
	Text.new("This is no easy feat, as they have one hour,",TV_T),
	Text.new("and all the ingredients are unmarked.",TV_T),
	Text.new("Can they do it?",TV_T),
	Text.new("[Advertisement Break]",TV_T),
	Text.new("[Advertisement Break]",TV_T),
	Text.new("[Advertisement Break]",TV_T),
	Text.new("Welcome back everyone.",TV_T),
	Text.new("Let's introduce each contestant.",TV_T),
	Text.new("What's your name.",TV_T),
	Text.new("My name is Tom.",TV_T),
	Text.new("Where are you from, Tom.",TV_T),
	Text.new("I'm from Detroit.",TV_T),
	Text.new("So Tom, do you think you have what it takes.",TV_T),
	Text.new("I was born for this.",TV_T),
	Text.new("I bake all the time for my neighboors.",TV_T),
	Text.new("Now, on to the next contestant.",TV_T),
	Text.new("What's your name.",TV_T),
	Text.new("My name is Jane.",TV_T),
	Text.new("Where are you from, Jane.",TV_T),
	Text.new("I'm from Tallahassee.",TV_T),
	Text.new("Wow, from the south.",TV_T),
	Text.new("Do you have what it takes?",TV_T),
	Text.new("Yeah, duh.",TV_T),
	Text.new("I run a bakery back home.",TV_T),
	Text.new("This will be a cake walk.",TV_T),
	Text.new("[Advertisement Break]",TV_T),
	Text.new("[Advertisement Break]",TV_T),
	Text.new("[Advertisement Break]",TV_T),
	Text.new("Welcome back everyone.",TV_T),
	Text.new("We just have two more contestants to introduce.",TV_T),
	Text.new("What's your name.",TV_T),
	Text.new("My name is Ashley.",TV_T),
	Text.new("Where are you from, Ashley.",TV_T),
	Text.new("I'm from Maine.",TV_T),
	Text.new("Are you going to win?",TV_T),
	Text.new("Absolutely.",TV_T),
	Text.new("Pie was almost going to be my middle name.",TV_T),
	Text.new("That's insane, what were you parents thinking.",TV_T),
	Text.new("They really loved pie.",TV_T),
	Text.new("[Audience Laughter]",TV_T),
	Text.new("What's your name.",TV_T),
	Text.new("My name is Chris.",TV_T),
	Text.new("Where are you from, Chris.",TV_T),
	Text.new("I'm from L.A.",TV_T),
	Text.new("Oh wow.",TV_T),
	Text.new("Do you think you have what it takes?",TV_T),
	Text.new("Easy as pie.",TV_T),
	Text.new("I see you want a piece of the pie with pie puns.",TV_T),
	Text.new("And now a word from our sponsors.",TV_T),
	Text.new("[Advertisement Break]",TV_T),
},1)
