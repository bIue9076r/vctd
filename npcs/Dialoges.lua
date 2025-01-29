World.Dialoge[English] = {}

World.Dialoge[English][1] = Dialoge.new({
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

World.Dialoge[English][2] = Dialoge.new({
	Text.new("Hey Ms. Drew",Varisa),
	Text.new("Hey Varisa",Zoey),
	Text.new("Is your mom still around?",Zoey),
	Text.new("Nope, haven't seen her",Varisa),
	Text.new("That's so unlike her",Zoey),
	Text.new("I hope she's okay",Zoey),
	Text.new("yeah...",Varisa),
	Text.new("....",Zoey),
},1)

World.Dialoge[English][3] = Dialoge.new({
	Text.new("This Just in!",TV_B),
	Text.new("5 Confirmed Deaths in relation to Serial Killer",TV_B),
	Text.new("Experts Weigh in...",TV_B),
	Text.new("Are they a satanist?",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)

World.Dialoge[English][4] = Dialoge.new({
	Text.new("Folks....",TV_B),
	Text.new("Nothing out of the ordinary just happened.",TV_B),
	Text.new("*Random Gibberish*",TV_B),
},1)
