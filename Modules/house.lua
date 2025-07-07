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
	
	repeat
		t = math.random(2,4)
	until not (t == Traits.lastGiven)
	Traits.lastGiven = t
	
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

Families.isOpen = {
	[1] = true,
	[2] = false,
	[3] = false,
	[4] = false,
	[5] = false,
	[6] = false,
	[7] = false,
	[8] = true,
	[9] = false,
	[10] = false,
}

HouseHolds = Range.parse("1~10")
Killers = {1,0,0}
randomizeTbl(HouseHolds)
randomizeTbl(Killers)

House = {}
House.house = {}

function House.new()
	local tr = Traits.newTrait()
	
	local tbl = {
		isKiller = false,
		HouseTrait = tr,
		isOpen = false,
		HouseHold = pop(HouseHolds),
	}
	
	if tbl.HouseHold == 4 or tbl.HouseHold == 6 or tbl.HouseHold == 7 then
		local t = {[0] = false, [1] = true}
		tbl.isKiller = t[pop(Killers)]
	end
	
	tbl.isOpen = Families.isOpen[tbl.HouseHold] or false
	
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
	if House.house[i].HouseHold == 4 or House.house[i].HouseHold == 6 or House.house[i].HouseHold == 7 then
		print(i..":",
			House.house[i].HouseTrait,
			"\t"..Families[House.house[i].HouseHold],
			"\t"..tostring(House.house[i].isKiller)
		)
	else
		print(i..":",
			House.house[i].HouseTrait,
			"\t"..Families[House.house[i].HouseHold]
		)
	end
end
