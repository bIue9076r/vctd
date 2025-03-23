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
		if math.random(1,2) == 2 then
			if (i + 1) <= #tbl then
				local tmp = tbl[i]
				tbl[i] = tbl[i + 1]
				tbl[i + 1] = tmp
			else
				local tmp = tbl[i]
				tbl[i] = tbl[i - 1]
				tbl[i - 1] = tmp
			end
		end
	end
end

function pop(tbl)
	local r = tbl[#tbl]
	tbl[#tbl] = nil
	return r
end

HouseHolds = Range.parse("1~10")
randomizeTbl(HouseHolds)
randomizeTbl(HouseHolds)
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
		HouseHold = pop(HouseHolds),
	}
	
	return tbl
end

House[1] = House.new()
House[1][1] = Traits.newTrait()
House[1][2] = Traits.newTrait()

House[2] = House.new()
House[2][1] = Traits.newTrait()
House[2][2] = Traits.newTrait()

House[3] = House.new()
House[3][1] = Traits.newTrait()
House[3][2] = Traits.newTrait()

House[4] = House.new()
House[4][1] = Traits.newTrait()
House[4][2] = Traits.newTrait()


House[5] = House.new()
House[5][1] = Traits.newTrait()
House[5][2] = Traits.newTrait()

House[6] = House.new()
House[6][1] = Traits.newTrait()
House[6][2] = Traits.newTrait()

House[7] = House.new()
House[7][1] = Traits.newTrait()
House[7][2] = Traits.newTrait()


House[8] = House.new()
House[8][1] = Traits.newTrait()
House[8][2] = Traits.newTrait()

House[9] = House.new()
House[9][1] = Traits.newTrait()
House[9][2] = Traits.newTrait()

House[10] = House.new()
House[10][1] = Traits.newTrait()
House[10][2] = Traits.newTrait()
