function addMollieOut1(Map)
	
end

function addMollieIn1(Map)
	
end

function addMollieIn2(Map)
	
end

function addMollieIn3(Map)
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

function addMollieIn4(Map)
	
end

function addMollie(Map)
	
	addMollieOut1(Map - 5)
	addMollieIn1(Map - 4)
	addMollieIn2(Map - 3)
	addMollieIn3(Map - 2)
	addMollieIn4(Map - 1)
end
