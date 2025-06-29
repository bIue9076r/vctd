Traits = {
	[1] = "Killer",
	[2] = "Neat",
	[3] = "Messy",
	[4] = "Fanatic",
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

function randomizeTbl(tbl)
	for i = 1,#tbl do
		local r = math.random(1,#tbl)
		local tmp = tbl[i]
		tbl[i] = tbl[r]
		tbl[r] = tmp
	end
end

function pop(tbl)
	local r = tbl[#tbl]
	tbl[#tbl] = nil
	return r
end

Families = {
	[1] = "Wilkie",
	[2] = "Sean",
	[3] = "Karina",
	[4] = "Vivian",
	[5] = "Jami",
	[6] = "Fredrick",
	[7] = "Mollie",
	[8] = "Rachel",
	[9] = "Empty",
	[10] = "Empty",
}

HouseHolds = Range.parse("1~10")
randomizeTbl(HouseHolds)

House = {}
House.house = {}

function House.new()
	local tr1 = Traits.newTrait()
	local tr2 = Traits.newTrait()
	local kl = ((tr1 == "Killer") or (tr2 == "Killer"))
	
	if tr1 == "Killer" then
		tr1 = tr2
	end
	
	local tbl = {
		isKiller = kl,
		HouseTrait = tr1,
		isOpen = true,
		HouseHold = pop(HouseHolds),
	}
	
	if Families[tbl.HouseHold] == "Empty" then
		tbl.isOpen = false
	end
	
	return tbl
end

function House.save()
	
end

function House.load()
	
end

House.house[1] = House.new()
House.house[2] = House.new()

House.house[3] = House.new()
House.house[4] = House.new()
House.house[5] = House.new()
House.house[6] = House.new()

House.house[7] = House.new()
House.house[8] = House.new()
House.house[9] = House.new()
House.house[10] = House.new()

for i = 1,10 do
	print(i..":",
		House.house[i].HouseTrait,
		"\t"..Families[House.house[i].HouseHold]
	)
end