World.Map[79] = MapObj.new(Grass_1)

World.Map[79]:setTile(1,7,Road_N_T)
World.Map[79]:setTile(2,7,Road_T)
World.Map[79]:setTile(3,7,Road_N_T)
World.Map[79]:setTile(4,7,Road_T)
World.Map[79]:setTile(5,7,Road_N_T)
World.Map[79]:setTile(6,7,Road_T)
World.Map[79]:setTile(7,7,Road_N_T)

World.Map[79]:setLineH(1,6,8,Concrete)
World.Map[79]:setTile(8,7,Concrete)

World.Map[79]:addWall(Box.new(0,9.1,0.1,4.9,1,1,function()
	Map = World.Map[31]
	setPlr(20.5,Plr.y)
end))

World.Map[79]:addProp(Prop.new(17.1,11,Warning_T))
World.Map[79]:addProp(Prop.new(17.1,12,Warning_M))
World.Map[79]:addProp(Prop.new(17.1,13,Warning_B))
