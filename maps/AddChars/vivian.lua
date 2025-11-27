function addVivianOut1(Map)
	World.Map[Map]:addNpc(Npc.new(15.8,8.5,Brian,28,0,function()
	
	end,"Brian"))

	World.Map[Map]:addNpc(Npc.new(0.5,8.5,Wastecan,-12,0,function()
	
	end,"Waste"))
end

function addVivianIn1(Map)
	
end

function addVivianIn2(Map)
	
end

function addVivianIn3(Map)
	
end

function addVivianIn4(Map)
	World.Map[Map]:addNpc(Npc.new(13.0,7.9,Vivian,25,0,function()
	
	end,"Vivian"))
end

function addVivian(Map)
	World.Map[Map]:addNpc(Npc.new(10.0,10.0,Trash_P,-11,0,function ()
		
	end,"trash"))
	
	addVivianOut1(Map - 5)
	addVivianIn1(Map - 4)
	addVivianIn2(Map - 3)
	addVivianIn3(Map - 2)
	addVivianIn4(Map - 1)
end
