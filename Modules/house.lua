Traits = {
	[1] = "Killer",
	[2] = "Neat",
	[3] = "Messy",
	[4] = "Fliped",
	
}

Traits.killerGiven = false
Traits.lastGiven = 0

function Traits.newTrait()
	local t;
	
	if Traits.killerGiven then
		repeat
			t = math.random(2,4)
		until not (t == Traits.lastGiven)
	else
		repeat
			t = math.random(1,4)
		until not (t == Traits.lastGiven)
	end
	
	return t
end

House = {}
House[1] = {
	Traits[1]
}

House[2] = {
	Traits[1]
}
House[3] = {
	Traits[1]
}
House[4] = {
	Traits[1]
}

House[5] = {
	Traits[1]
}
House[6] = {
	Traits[1]
}
House[7] = {
	Traits[1]
}

House[8] = {
	Traits[1]
}
House[9] = {
	Traits[1]
}
House[10] = {
	Traits[1]
}