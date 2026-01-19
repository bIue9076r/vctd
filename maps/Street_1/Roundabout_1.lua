World.Map[25] = MapObj.new(Grass_1)

World.Map[25]:setTile(1,7,Road_N_T)
World.Map[25]:setTile(2,7,Road_T)
World.Map[25]:setTile(3,7,Road_N_T)
World.Map[25]:setTile(4,7,Road_T)
World.Map[25]:setTile(5,7,Road_N_T)
World.Map[25]:setTile(6,7,Road_T)
World.Map[25]:setTile(7,7,Road_N_T)

World.Map[25]:setLineH(1,6,8,Concrete)
World.Map[25]:setTile(8,7,Concrete)

World.Map[25]:addWall(Box.new(0,9.1,0.1,4.9,1,1,function()
	Map = World.Map[1]
	setPlr(20.5,Plr.y)
end))

World.Map[25]:addProp(Prop.new(10.8,2.9-1,Sand_BR,1,1))
World.Map[25]:addProp(Prop.new(10.8+1,2.9-1,Sand_B,1,1))
World.Map[25]:addProp(Prop.new(10.8+2,2.9-1,Sand_B,1,1))
World.Map[25]:addProp(Prop.new(10.8+3,2.9-1,Sand_B,1,1))
World.Map[25]:addProp(Prop.new(10.8+4,2.9-1,Sand_B,1,1))
World.Map[25]:addProp(Prop.new(10.8+5,2.9-1,Sand_B,1,1))
World.Map[25]:addProp(Prop.new(10.8+6,2.9-1,Sand_BL,1,1))

World.Map[25]:addProp(Prop.new(10.8,2.9,Sand_R,1,1))
World.Map[25]:addProp(Prop.new(10.8+1,2.9,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+2,2.9,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+3,2.9,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+4,2.9,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+5,2.9,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+6,2.9,Sand_L,1,1))

World.Map[25]:addProp(Prop.new(10.8,2.9+1,Sand_R,1,1))
World.Map[25]:addProp(Prop.new(10.8+1,2.9+1,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+2,2.9+1,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+3,2.9+1,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+4,2.9+1,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+5,2.9+1,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+6,2.9+1,Sand_L,1,1))

World.Map[25]:addProp(Prop.new(10.8,2.9+2,Sand_R,1,1))
World.Map[25]:addProp(Prop.new(10.8+1,2.9+2,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+2,2.9+2,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+3,2.9+2,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+4,2.9+2,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+5,2.9+2,Sand,1,1))
World.Map[25]:addProp(Prop.new(10.8+6,2.9+2,Sand_L,1,1))

World.Map[25]:addProp(Prop.new(10.8,2.9+3,Sand_TR,1,1))
World.Map[25]:addProp(Prop.new(10.8+1,2.9+3,Sand_T,1,1))
World.Map[25]:addProp(Prop.new(10.8+2,2.9+3,Sand_T,1,1))
World.Map[25]:addProp(Prop.new(10.8+3,2.9+3,Sand_T,1,1))
World.Map[25]:addProp(Prop.new(10.8+4,2.9+3,Sand_T,1,1))
World.Map[25]:addProp(Prop.new(10.8+5,2.9+3,Sand_T,1,1))
World.Map[25]:addProp(Prop.new(10.8+6,2.9+3,Sand_TL,1,1))

World.Map[25]:addProp(Prop.new(4.5,4.0,Trash_Can))

World.Map[25]:addProp(Prop.new(17.1,11,Warning_T))
World.Map[25]:addProp(Prop.new(17.1,12,Warning_M))
World.Map[25]:addProp(Prop.new(17.1,13,Warning_B))

-- Day 1

World.Map[25]:addNpc(Npc.new(13.5,5.0,Sean,40,0,function()
	
end,"Sean"))

World.Map[25]:addNpc(Npc.new(15.0,5.0,Ella,41,0,function()
	
end,"Ella"))

-- Day 2

World.Map[25]:addNpc(Npc.new(1.7,7.2,Tracey,33,1,function()
	
end,"Tracey"))

World.Map[25]:addNpc(Npc.new(13.0,10.2,Fredrick,34,1,function()
	
end,"Fredrick"))

World.Map[25]:addNpc(Npc.new(14.5,10.2,Wilkie,35,1,function()
	
end,"Wilkie"))

World.Map[25]:addNpc(Npc.new(13.5,5.0,Mollie,36,1,function()
	
end,"Mollie"))

World.Map[25]:addNpc(Npc.new(19.8,1.0,Jami,57,1,function()
	
end,"Jami"))

World.Map[25]:addProp(Prop.new(14.0,4.5,Ella_sand,1,1,1,nil,"Ella_sand"))