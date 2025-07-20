function addSeanOut1(Map)
	
end

function addSeanIn1(Map)
	
end

function addSeanIn2(Map)
	World.Map[Map]:addNpc(Npc.new(15.2,10.2,Ella,27,0,function()
	
	end))
end

function addSeanIn3(Map)
	World.Map[Map]:addNpc(Npc.new(12.9,7.7,Sean,26,0,function()
	
	end))
end

function addSeanIn4(Map)
	
end

function addSean(Map)
	
	addSeanOut1(Map - 5)
	addSeanIn1(Map - 4)
	addSeanIn2(Map - 3)
	addSeanIn3(Map - 2)
	addSeanIn4(Map - 1)
end
