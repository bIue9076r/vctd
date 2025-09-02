function addKarinaOut1(Map)
	
end

function addKarinaIn1(Map)
	World.Map[Map]:addNpc(Npc.new(1.3,4.1,Karina,19,0,function()
	
	end,"Karina"))
end

function addKarinaIn2(Map)
	
end

function addKarinaIn3(Map)
	
end

function addKarinaIn4(Map)
	World.Map[Map]:addNpc(Npc.new(12.0,2.6,Zach,20,0,function()
	
	end,"Zach"))
end

function addKarina(Map)
	
	addKarinaOut1(Map - 5)
	addKarinaIn1(Map - 4)
	addKarinaIn2(Map - 3)
	addKarinaIn3(Map - 2)
	addKarinaIn4(Map - 1)
end
