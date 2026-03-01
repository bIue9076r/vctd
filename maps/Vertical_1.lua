World.Map[26] = MapObj.new(Grass_1)

World.Map[26]:setTile(5,4,Road_N_T)
World.Map[26]:setTile(5,5,Road_N_B)
World.Map[26]:setTile(6,4,Road_T)
World.Map[26]:setTile(6,5,Road_B)
World.Map[26]:setTile(7,4,Road_N_T)
World.Map[26]:setTile(7,5,Road_N_B)
World.Map[26]:setTile(8,4,Road_T)
World.Map[26]:setTile(8,5,Road_B)
World.Map[26]:setTile(9,4,Road_N_T)
World.Map[26]:setTile(9,5,Road_N_B)
World.Map[26]:setTile(10,4,Road_T)
World.Map[26]:setTile(10,5,Road_B)
World.Map[26]:setTile(11,4,Road_N_T)
World.Map[26]:setTile(11,5,Road_N_B)

World.Map[26]:setLineH(4,3,11,Concrete)
World.Map[26]:setLineH(4,6,11,Concrete)
World.Map[26]:setLineV(4,1,7,Concrete)
World.Map[26]:setLineV(7,1,2,Concrete)
World.Map[26]:setTile(7,7,Concrete)

World.Map[26]:setTile(5,1,Road_R)
World.Map[26]:setTile(6,1,Road_L)
World.Map[26]:setTile(5,2,Road_N_R)
World.Map[26]:setTile(6,2,Road_N_L)
World.Map[26]:setTile(5,3,Road_R)
World.Map[26]:setTile(6,3,Road_L)
World.Map[26]:setTile(5,4,Road_N_R)
World.Map[26]:setTile(6,4,Road_N_L)
World.Map[26]:setTile(5,5,Road_R)
World.Map[26]:setTile(6,5,Road_L)
World.Map[26]:setTile(5,6,Road_N_R)
World.Map[26]:setTile(6,6,Road_N_L)
World.Map[26]:setTile(5,7,Road_R)
World.Map[26]:setTile(6,7,Road_L)

World.Map[26]:addWall(Box.new(21.9,3,0.1,8,1,1,function()
	Map = World.Map[19]
	setPlr(0.5,(Plr.y/2) + 7.5)
end))

World.Map[26]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	Map = World.Map[27]
	setPlr(Plr.x,0.5)
end))

World.Map[26]:addNpc(Npc.new(2.0,2.1,Mollie,66,1,function()
	
end,"Mollie"))

World.Map[26]:addNpc(Npc.new(14.4,1.0,Zach,65,1,function()
	
end,"Zach"))

World.Map[26]:addNpc(Npc.new(13.5,10.7,Vivian,70,1,function()
	
end,"Vivian"))

World.Map[26]:addNpc(Npc.new(15.0,10.7,Brian,69,1,function()
	
end,"Brian"))

World.Map[26]:addNpc(Npc.new(1.2,10.1,Sean,67,1,function()
	
end,"Sean"))

World.Map[26]:addNpc(Npc.new(2.7,10.1,Ella,68,1,function()
	
end,"Ella"))

World.Map[26]:addNpc(Npc.new(6.5,5.6,Lassie,64,1,function()
	
end,"Lassie"))