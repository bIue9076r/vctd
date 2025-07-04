World.Map[80] = MapObj.new(Grass_1)

World.Map[80]:setTile(1,7,Road_N_T)
World.Map[80]:setTile(2,7,Road_T)
World.Map[80]:setTile(3,7,Road_N_T)
World.Map[80]:setTile(4,7,Road_T)
World.Map[80]:setTile(5,7,Road_N_T)
World.Map[80]:setTile(6,7,Road_T)
World.Map[80]:setTile(7,7,Road_N_T)

World.Map[80]:setLineH(1,6,8,Concrete)
World.Map[80]:setTile(8,7,Concrete)

World.Map[80]:addWall(Box.new(0,9.1,0.1,4.9,1,1,function()
	Map = World.Map[55]
	setPlr(20.5,Plr.y)
end))

World.Map[80]:addProp(Prop.new(17.1,11,Warning_T))
World.Map[80]:addProp(Prop.new(17.1,12,Warning_M))
World.Map[80]:addProp(Prop.new(17.1,13,Warning_B))
