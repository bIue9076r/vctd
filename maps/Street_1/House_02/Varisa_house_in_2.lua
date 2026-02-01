World.Map[9] = MapObj.new(Planks)

World.Map[9]:setLineH(1,1,4,Wall)
World.Map[9]:setLineH(5,1,11,Brick)
World.Map[9]:setLineH(1,2,4,Wall)
World.Map[9]:setLineH(1,3,4,Wall)
World.Map[9]:setLineH(1,4,4,Wall)
World.Map[9]:setLineH(1,5,4,Wall)
World.Map[9]:setLineH(1,6,4,Wall)
World.Map[9]:setLineH(1,7,4,Wall)

World.Map[9]:setTile(5,2,Planks,AntiVoid)
World.Map[9]:setLineV(5,3,5,Stairs)
World.Map[9]:setLineV(6,3,5,Planks,Bar_L)

World.Map[9]:setTile(7,1,Brick_D)
World.Map[9]:setTile(6,7,Carpet_V)

World.Map[9]:setTile(10,5,BigTable_B)
World.Map[9]:setTile(10,4,BigTable_T)

World.Map[9]:addProp(Prop.new(18.75,7,TV_T))

World.Map[9]:addNpc(Npc.new(18.75,8,TV_B,3,0,function()
	
end))

World.Map[9]:addProp(Prop.new(20.5,12.5,Vase))
World.Map[9]:addProp(Prop.new(20.5,11.5,Flowers,1))

World.Map[9]:addProp(Prop.new(20.5,3,Vase))
World.Map[9]:addProp(Prop.new(20.5,2,Flowers,1))

World.Map[9]:addProp(Prop.new(15.7,9,Couch_6,1,1))
World.Map[9]:addProp(Prop.new(15.7,8,Couch_4,1,1))
World.Map[9]:addProp(Prop.new(15.7,7,Couch_2,1,1))

World.Map[9]:addProp(Prop.new(14.7,9,Couch_5,1,1))
World.Map[9]:addProp(Prop.new(14.7,8,Couch_3,1,1))
World.Map[9]:addProp(Prop.new(14.7,7,Couch_1,1,1))

World.Map[9]:addWall(Box.new(0,0,8,14))
World.Map[9]:addWall(Box.new(8,0,4,2))
World.Map[9]:addWall(Box.new(12,0,2,1))
World.Map[9]:addWall(Box.new(14,0,8,2))
World.Map[9]:addWall(Box.new(10,4,0.1,6))
World.Map[9]:addWall(Box.new(8,4,2,0.1))

World.Map[9]:addWall(Box.new(18.4,6.88,1.6,2))

World.Map[9]:addProp(Prop.new(14.7,6,ERROBJ,1,1))

World.Map[9]:addWall(Box.new(9.9,13.9,2.2,0.1,1,1,function()
	Map = World.Map[8]
	setPlr(10.5,0.5)
end))

World.Map[9]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[10]
	setPlr(Plr.x,5.25)
end))

World.Map[9]:addWall(Box.new(11.9,1,2.2,0.1,1,1,function()
	Map = World.Map[12]
	setPlr(12.5,12.5)
end))

World.Map[9]:addWall(Box.new(8,1.9,0.1,2.2,1,1,function()
	Map = World.Map[11]
	setPlr(20.5,Plr.y)
end))
