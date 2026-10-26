World.Dialogue[English][-23] = Dialogue.new({
	Text.new("It's the toolbox.",Varisa,nil,function(npc)
		Story.set("Toolbox_Wilkie_3",true)
	end),
},1)

World.Dialogue[English][-22] = Dialogue.new({
	Text.new("This isn't my bed.",Varisa),
},1)

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
			Jukebox_stop()
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
