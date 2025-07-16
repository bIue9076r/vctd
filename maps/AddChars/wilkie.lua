function addWilkieOut1(Map)
	
end

function addWilkieIn1(Map)
	World.Map[Map]:addNpc(Npc.new(19.2,9.7,Wilkie,18,0,function()
	
	end))
end

function addWilkieIn2(Map)
	
end

function addWilkieIn3(Map)
	
end

function addWilkieIn4(Map)
	
end

function addWilkie(Map)
	
	addWilkieOut1(Map - 5)
	addWilkieIn1(Map - 4)
	addWilkieIn2(Map - 3)
	addWilkieIn3(Map - 2)
	addWilkieIn4(Map - 1)
end
