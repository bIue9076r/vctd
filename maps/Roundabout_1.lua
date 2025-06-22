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

World.Map[25]:addNpc(Npc.new(11.9,3.1,Jami,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(2.8,6.0,Sean,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(3.8,6.0,Ella,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(10.4,10.6,Karina,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(11.4,10.6,Zach,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(5.5,3.7,Mollie,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(18.2,8.7,Wilkie,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(19.2,8.7,Fredrick,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(1.1,1.7,Vivian,1,0,function()
	
end))

World.Map[25]:addNpc(Npc.new(2.1,1.7,Brian,1,0,function()
	
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
