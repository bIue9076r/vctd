World.Map[23] = MapObj.new(Planks)

World.Map[23]:setLineH(1,1,4,Wall)
World.Map[23]:setLineH(8,1,11,Wall)
World.Map[23]:setLineH(8,2,11,Wall)
World.Map[23]:setLineH(8,3,11,Wall)
World.Map[23]:setLineH(8,4,11,Wall)
World.Map[23]:setLineH(8,5,11,Wall)
World.Map[23]:setLineH(8,6,11,Wall)
World.Map[23]:setLineH(8,7,11,Wall)

World.Map[23]:setTile(7,7,Planks,AntiVoid)
World.Map[23]:setLineV(7,4,6,Stairs)
World.Map[23]:setLineV(6,4,6,Planks,Bar_R)

World.Map[23]:setTile(6,1,Carpet_V)
World.Map[23]:setTile(5,7,Carpet_V)

World.Map[23]:setTile(2,4,BigTable_B)
World.Map[23]:setTile(2,3,BigTable_T)

World.Map[23]:addProp(Prop.new(2.75,5,TV_T))

World.Map[23]:addNpc(Npc.new(2.75,6,TV_B,3,0,function()
	
end))

World.Map[23]:addWall(Box.new(14,0,8,14))
World.Map[23]:addWall(Box.new(0,0,8,2))

World.Map[23]:addWall(Box.new(11.7,6,0.1,8))

World.Map[23]:addWall(Box.new(9.9,0,2.2,0.1,1,1,function()
	Map = World.Map[22]
	setPlr(10.5,12.5)
end))

World.Map[23]:addWall(Box.new(12.2,9.5,1.8,0.1,1,1,function()
	Map = World.Map[25]
	setPlr(Plr.x,8)
end))

World.Map[23]:addWall(Box.new(7.9,13.9,2.2,0.1,1,1,function()
	Map = World.Map[24]
	setPlr(Plr.x,1.5)
end))
