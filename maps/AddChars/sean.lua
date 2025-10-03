function addSeanOut1(Map)
	
end

function addSeanIn1(Map)
	World.Map[Map]:addNpc(Npc.new(21,9.45,Interaction,-3,0,function()
		
	end,"Computer"))

	World.Map[Map]:addNpc(Npc.new(2.5,0.0,Interaction,-4,0,function()
		
	end))

	World.Map[Map]:addNpc(Npc.new(18.3,4.36,Interaction,-2,0,function()
		
	end,"Books"))
end

function addSeanIn2(Map)
	World.Map[Map]:addNpc(Npc.new(15.2,10.2,Ella,27,0,function()
	
	end,"Ella"))
end

function addSeanIn3(Map)
	World.Map[Map]:addNpc(Npc.new(12.9,7.7,Sean,26,0,function()
	
	end,"Sean"))

	World.Map[Map]:addNpc(Npc.new(17.5,5.4,Interaction,-5,0,function()
		
	end))

	World.Map[Map]:addNpc(Npc.new(11.5, 7.5,Interaction,-5,0,function()
		
	end))

	World.Map[Map]:addNpc(Npc.new(15.7,9.0,Interaction,-6,0,function()
		
	end))
end

function addSeanIn4(Map)
	World.Map[Map]:addNpc(Npc.new(12.9,2.7,Interaction,-7,0,function()
		
	end))
end

function addSean(Map)
	
	addSeanOut1(Map - 5)
	addSeanIn1(Map - 4)
	addSeanIn2(Map - 3)
	addSeanIn3(Map - 2)
	addSeanIn4(Map - 1)
end
