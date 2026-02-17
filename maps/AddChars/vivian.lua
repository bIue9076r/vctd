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
	World.Map[Map]:addProp(Prop.new(14.5,7.5,Pentagram_Unlit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(15.5,7.5,Pentagram_Unlit_2,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addNpc(Npc.new(15,7,Karly,0,1,function()
		
	end,"Karly"))
	
	World.Map[Map]:addProp(Prop.new(15,7,Rope,1,0,1,"Rope",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(12.5,6,Pentagram_Unlit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(13.5,6,Pentagram_Unlit_2,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(16.5,6,Pentagram_Unlit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(17.5,6,Pentagram_Unlit_2,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(12.5,9,Pentagram_Unlit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(13.5,9,Pentagram_Unlit_2,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(16.5,9,Pentagram_Unlit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(17.5,9,Pentagram_Unlit_2,1,1,1,"pentagram",function()
		
	end))
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
