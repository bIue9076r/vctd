function addMollieOut1(Map)
	
end

function addMollieIn1(Map)
	World.Map[Map]:addNpc(Npc.new(19.2,9.7,Wilkie,18,0,function()
	
	end))
end

function addMollieIn2(Map)
	
end

function addMollieIn3(Map)
	
end

function addMollieIn4(Map)
	
end

function addMollie(Map)
	
	addMollieOut1(Map - 5)
	addMollieIn1(Map - 4)
	addMollieIn2(Map - 3)
	addMollieIn3(Map - 2)
	addMollieIn4(Map - 1)
end
