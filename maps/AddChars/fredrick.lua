function addFredrickOut1(Map)
	for i = 1,10 do
		if House.house[i].HouseHold == 6 and House.house[i].isKiller then
			World.Map[Map]:addNpc(Npc.new(3.2,8.4,Fredrick,43,0,function()
				
			end,"Fredrick"))
		else
			World.Map[Map]:addNpc(Npc.new(3.2,8.4,Fredrick,24,0,function()
				
			end,"Fredrick"))
		end
	end
end

function addFredrickIn1(Map)
	
end

function addFredrickIn2(Map)
	
end

function addFredrickIn3(Map)
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

function addFredrickIn4(Map)
	
end

function addFredrick(Map)
	
	addFredrickOut1(Map - 5)
	addFredrickIn1(Map - 4)
	addFredrickIn2(Map - 3)
	addFredrickIn3(Map - 2)
	addFredrickIn4(Map - 1)
end
