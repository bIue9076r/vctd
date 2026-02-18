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
	
	World.Map[Map]:addProp(Prop.new(17,5,Box_1_1))
	World.Map[Map]:addProp(Prop.new(18,5,Box_1_2))
	World.Map[Map]:addProp(Prop.new(17,6,Box_1_3))
	World.Map[Map]:addProp(Prop.new(18,6,Box_1_4))

	World.Map[Map]:addProp(Prop.new(11,11,Box_1_1))
	World.Map[Map]:addProp(Prop.new(12,11,Box_1_2))
	World.Map[Map]:addProp(Prop.new(11,12,Box_1_3))
	World.Map[Map]:addProp(Prop.new(12,12,Box_1_4))

	World.Map[Map]:addProp(Prop.new(18,10,Box_1_1))
	World.Map[Map]:addProp(Prop.new(19,10,Box_1_2))
	World.Map[Map]:addProp(Prop.new(18,11,Box_1_3))
	World.Map[Map]:addProp(Prop.new(19,11,Box_1_4))

	World.Map[Map]:addProp(Prop.new(19.5,7.5,Box_1_1))
	World.Map[Map]:addProp(Prop.new(20.5,7.5,Box_1_2))
	World.Map[Map]:addProp(Prop.new(19.5,8.5,Box_1_3))
	World.Map[Map]:addProp(Prop.new(20.5,8.5,Box_1_4))

	World.Map[Map]:addProp(Prop.new(10.9,7,Box_1_1))
	World.Map[Map]:addProp(Prop.new(11.9,7,Box_1_2))
	World.Map[Map]:addProp(Prop.new(10.9,8,Box_1_3))
	World.Map[Map]:addProp(Prop.new(11.9,8,Box_1_4))

	World.Map[Map]:addProp(Prop.new(15.2,8.5,Box_1_1))
	World.Map[Map]:addProp(Prop.new(16.2,8.5,Box_1_2))
	World.Map[Map]:addProp(Prop.new(15.2,9.5,Box_1_3))
	World.Map[Map]:addProp(Prop.new(16.2,9.5,Box_1_4))
	
	World.Map[Map]:addWall(Box.new(0,0,8,14))
	World.Map[Map]:addWall(Box.new(8,0,14,2))
	World.Map[Map]:addWall(Box.new(10,4,0.1,6))
	World.Map[Map]:addWall(Box.new(8,10,2,0.1))
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
