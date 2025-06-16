World.Map[11] = MapObj.new(Planks)
World.Map[11]:setLineH(7,1,11,Wall)
World.Map[11]:setLineV(1,1,7,Void)
World.Map[11]:setLineV(2,1,7,Void)
World.Map[11]:setLineV(3,1,7,Void)
World.Map[11]:setLineV(4,1,7,Void)
World.Map[11]:setLineV(5,1,7,Void)
World.Map[11]:setLineV(6,1,7,Wall)

World.Map[11]:addWall(Box.new(0,0,12,14))
World.Map[11]:addWall(Box.new(12,0,10,2))

World.Map[11]:addProp(Prop.new(12,2,Bed_1_1,1,1))
World.Map[11]:addProp(Prop.new(13,2,Bed_1_2,1,1))
World.Map[11]:addProp(Prop.new(12,3,Bed_1_3,1,1))
World.Map[11]:addProp(Prop.new(13,3,Bed_1_4,1,1))
World.Map[11]:addProp(Prop.new(12,4,Bed_1_5,1,1))
World.Map[11]:addProp(Prop.new(13,4,Bed_1_6,1,1))

World.Map[11]:addWall(Box.new(21.9,2,0.1,1,1,1,function()
	Map = World.Map[9]
	setPlr(8.5,Plr.y)
end))
