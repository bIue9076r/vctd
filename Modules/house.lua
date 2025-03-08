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
		Traits.lastGiven = t
	else
		repeat
			t = math.random(1,4)
		until not (t == Traits.lastGiven)
		Traits.lastGiven = t
		if t == 1 then
			Traits.killerGiven = true
		end
	end
	
	return Traits[t]
end

House = {}
House[1] = {
	Traits.newTrait(),
	Traits.newTrait(),
}

House[2] = {
	Traits.newTrait(),
	Traits.newTrait(),
}
House[3] = {
	Traits.newTrait(),
	Traits.newTrait(),
}
House[4] = {
	Traits.newTrait(),
	Traits.newTrait(),
}

House[5] = {
	Traits.newTrait(),
	Traits.newTrait(),
}
House[6] = {
	Traits.newTrait(),
	Traits.newTrait(),
}
House[7] = {
	Traits.newTrait(),
	Traits.newTrait(),
}

House[8] = {
	Traits.newTrait(),
	Traits.newTrait(),
}
House[9] = {
	Traits.newTrait(),
	Traits.newTrait(),
}
House[10] = {
	Traits.newTrait(),
	Traits.newTrait(),
}