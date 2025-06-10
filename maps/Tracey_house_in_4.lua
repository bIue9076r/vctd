World.Map[6] = MapObj.new(Planks)

World.Map[6]:setLineH(7,1,11,Wall)
World.Map[6]:setLineV(1,1,7,Void)
World.Map[6]:setLineV(2,1,7,Void)
World.Map[6]:setLineV(3,1,7,Void)
World.Map[6]:setLineV(4,1,7,Void)
World.Map[6]:setLineV(5,1,7,Void)
World.Map[6]:setLineV(6,1,7,Wall)

World.Map[6]:addWall(Box.new(0,0,12,14))
World.Map[6]:addWall(Box.new(12,0,10,2))

World.Map[6]:addProp(Prop.new(14.6,0.5,Poster_Bu))

World.Map[6]:addProp(Prop.new(12,2,ERROBJ,1,1))
World.Map[6]:addProp(Prop.new(12,2,ERROBJ,1,1))
World.Map[6]:addProp(Prop.new(12,3,ERROBJ,1,1))
World.Map[6]:addProp(Prop.new(12,3,ERROBJ,1,1))
World.Map[6]:addProp(Prop.new(12,4,ERROBJ,1,1))
World.Map[6]:addProp(Prop.new(12,4,ERROBJ,1,1))

World.Map[6]:addWall(Box.new(21.9,2,0.1,1,1,1,function()
	Map = World.Map[3]
	setPlr(8.5,Plr.y)
end))
