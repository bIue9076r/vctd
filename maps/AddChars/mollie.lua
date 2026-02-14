function addMollieOut1(Map)
	
end

function addMollieIn1(Map)
	
end

function addMollieIn2(Map)
	
end

function addMollieIn3(Map)
	World.Map[Map]:addProp(Prop.new(11.28,4.92,Pentagram_Lit_1,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addProp(Prop.new(12.28,4.92,Pentagram_Lit_2,1,1,1,"pentagram",function()
		
	end))
	
	World.Map[Map]:addNpc(Npc.new(15,13,Karly,0,1,function()
		
	end,"Karly"))
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
