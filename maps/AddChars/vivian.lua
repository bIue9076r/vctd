function addVivianOut1(Map)
	
end

function addVivianIn1(Map)
	
end

function addVivianIn2(Map)
	
end

function addVivianIn3(Map)
	
end

function addVivianIn4(Map)
	World.Map[Map]:addNpc(Npc.new(13.0,7.9,Vivian,25,0,function()
	
	end))
	
	World.Map[Map]:addNpc(Npc.new(18.7,9.4,Brian,28,0,function()
	
	end))
end

function addVivian(Map)
	
	addVivianOut1(Map - 5)
	addVivianIn1(Map - 4)
	addVivianIn2(Map - 3)
	addVivianIn3(Map - 2)
	addVivianIn4(Map - 1)
end
