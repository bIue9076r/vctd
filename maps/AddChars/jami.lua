function addJamiOut1(Map)
	World.Map[Map]:addNpc(Npc.new(12.0,8.3,Jami,21,0,function()
	
	end,"Jami"))

	World.Map[Map]:addNpc(Npc.new(11.0,9.4,MiniBox,-16,1,function()
	
	end,"Box"))

	World.Map[Map]:addNpc(Npc.new(14.2,8.3,Jami,51,1,function()
	
	end,"Jami_2"))
end

function addJamiIn1(Map)
	
end

function addJamiIn2(Map)
	
end

function addJamiIn3(Map)
	
end

function addJamiIn4(Map)
	
end

function addJami(Map)
	
	addJamiOut1(Map - 5)
	addJamiIn1(Map - 4)
	addJamiIn2(Map - 3)
	addJamiIn3(Map - 2)
	addJamiIn4(Map - 1)
end
