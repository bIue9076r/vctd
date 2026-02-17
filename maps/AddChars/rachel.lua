function addRachelOut1(Map)
	
end

function addRachelIn1(Map)
	World.Map[Map]:addNpc(Npc.new(1.3,6.9,Lassie,45,1,function()
		
	end,"Lassie"))

	World.Map[Map]:addNpc(Npc.new(2.5,0.0,Interaction,-14,0,function()
		
	end,"Fridge"))
end

function addRachelIn2(Map)
	World.Map[Map]:addNpc(Npc.new(15.7,4.2,Lassie,23,0,function()
	
	end,"Lassie"))
end

function addRachelIn3(Map)
	World.Map[Map]:addProp(Prop.new(14.3,2,Amp))
	World.Map[Map]:addProp(Prop.new(20,2,Bed_1_1,1,1))
	World.Map[Map]:addProp(Prop.new(21,2,Bed_1_2,1,1))
	World.Map[Map]:addProp(Prop.new(20,3,Bed_1_3,1,1))
	World.Map[Map]:addProp(Prop.new(21,3,Bed_1_4,1,1))
	World.Map[Map]:addProp(Prop.new(20,4,Bed_1_5,1,1))
	World.Map[Map]:addProp(Prop.new(21,4,Bed_1_6,1,1))
	
	World.Map[Map]:addWall(Box.new(20,3.8,2,0.3))
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
