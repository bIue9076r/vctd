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
	World.Map[Map]:addProp(Prop.new(11.28,4.92,Pentagram_Lit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(12.28,4.92,Pentagram_Lit_2,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addNpc(Npc.new(15,13,Karly,0,1,function()
		
	end,"Karly"))
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
