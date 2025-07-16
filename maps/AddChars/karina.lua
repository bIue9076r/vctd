function addKarinaOut1(Map)
	
end

function addKarinaIn1(Map)
	World.Map[Map]:addNpc(Npc.new(19.2,9.7,Wilkie,18,0,function()
	
	end))
end

function addKarinaIn2(Map)
	
end

function addKarinaIn3(Map)
	
end

function addKarinaIn4(Map)
	
end

function addKarina(Map)
	
	addKarinaOut1(Map - 5)
	addKarinaIn1(Map - 4)
	addKarinaIn2(Map - 3)
	addKarinaIn3(Map - 2)
	addKarinaIn4(Map - 1)
end
