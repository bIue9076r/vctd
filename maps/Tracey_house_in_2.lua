World.Map[3] = MapObj.new(Planks)

World.Map[3]:setLineH(1,1,4,Wall)
World.Map[3]:setLineH(5,1,11,Brick)
World.Map[3]:setLineH(1,2,4,Wall)
World.Map[3]:setLineH(1,3,4,Wall)
World.Map[3]:setLineH(1,4,4,Wall)
World.Map[3]:setLineH(1,5,4,Wall)
World.Map[3]:setLineH(1,6,4,Wall)
World.Map[3]:setLineH(1,7,4,Wall)

World.Map[3]:setTile(7,1,Brick_D)
World.Map[3]:setTile(6,7,Carpet_V)

World.Map[3]:setTile(10,5,BigTable_B)
World.Map[3]:setTile(10,4,BigTable_T)

World.Map[3]:addProp(Prop.new(18.75,7,TV_T))

World.Map[3]:addNpc(Npc.new(18.75,8,TV_B,3,0,function()
	
end))

World.Map[3]:addWall(Box.new(0,0,8,14))
World.Map[3]:addWall(Box.new(8,0,4,2))
World.Map[3]:addWall(Box.new(12,0,2,1))
World.Map[3]:addWall(Box.new(14,0,8,2))

World.Map[3]:addWall(Box.new(9.9,13.9,2.2,0.1,1,1,function()
	print("Exit Living Room")
	Map = World.Map[2]
	setPlr(10.5,0.5)
end))

World.Map[3]:addWall(Box.new(7.9,2,2.2,0.1,1,1,function()
	print("raise")
	Map = World.Map[4]
end))

World.Map[3]:addWall(Box.new(11.9,1,2.2,0.1,1,1,function()
	print("Enter Backyard")
	Map = World.Map[5]
	setPlr(12.5,12.5)
end))

World.Map[3]:addNpc(Npc.new(13,6.5,Zoey,2,0,function()
	
end))
