function addRachelOut1(Map)
	
end

function addRachelIn1(Map)
	
end

function addRachelIn2(Map)
	World.Map[Map]:addNpc(Npc.new(15.7,4.2,Lassie,23,0,function()
	
	end))
end

function addRachelIn3(Map)
	World.Map[Map]:addProp(Prop.new(14.3,2,Amp))
end

function addRachelIn4(Map)
	
end

function addRachel(Map)
	
	addRachelOut1(Map - 5)
	addRachelIn1(Map - 4)
	addRachelIn2(Map - 3)
	addRachelIn3(Map - 2)
	addRachelIn4(Map - 1)
end
