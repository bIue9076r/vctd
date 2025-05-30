World.Map[6] = MapObj.new(Grass_1)

World.Map[6]:setTile(1,7,Road_N_T)
World.Map[6]:setTile(2,7,Road_T)
World.Map[6]:setTile(3,7,Road_N_T)
World.Map[6]:setTile(4,7,Road_T)
World.Map[6]:setTile(5,7,Road_N_T)
World.Map[6]:setTile(6,7,Road_T)
World.Map[6]:setTile(7,7,Road_N_T)

World.Map[6]:setLineH(1,6,8,Concrete)
World.Map[6]:setTile(8,7,Concrete)

World.Map[6]:addWall(Box.new(0,9.1,0.1,4.9,1,1,function()
	Map = World.Map[1]
	setPlr(20.5,Plr.y)
end))

World.Map[6]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	Map = World.Map[7]
	setPlr(Plr.x,0.5)
end))

World.Map[6]:addProp(Prop.new(10.8,2.9-1,Sand_BR,1,1))
World.Map[6]:addProp(Prop.new(10.8+1,2.9-1,Sand_B,1,1))
World.Map[6]:addProp(Prop.new(10.8+2,2.9-1,Sand_B,1,1))
World.Map[6]:addProp(Prop.new(10.8+3,2.9-1,Sand_B,1,1))
World.Map[6]:addProp(Prop.new(10.8+4,2.9-1,Sand_B,1,1))
World.Map[6]:addProp(Prop.new(10.8+5,2.9-1,Sand_B,1,1))
World.Map[6]:addProp(Prop.new(10.8+6,2.9-1,Sand_BL,1,1))

World.Map[6]:addProp(Prop.new(10.8,2.9,Sand_R,1,1))
World.Map[6]:addProp(Prop.new(10.8+1,2.9,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+2,2.9,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+3,2.9,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+4,2.9,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+5,2.9,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+6,2.9,Sand_L,1,1))

World.Map[6]:addProp(Prop.new(10.8,2.9+1,Sand_R,1,1))
World.Map[6]:addProp(Prop.new(10.8+1,2.9+1,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+2,2.9+1,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+3,2.9+1,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+4,2.9+1,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+5,2.9+1,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+6,2.9+1,Sand_L,1,1))

World.Map[6]:addProp(Prop.new(10.8,2.9+2,Sand_R,1,1))
World.Map[6]:addProp(Prop.new(10.8+1,2.9+2,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+2,2.9+2,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+3,2.9+2,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+4,2.9+2,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+5,2.9+2,Sand,1,1))
World.Map[6]:addProp(Prop.new(10.8+6,2.9+2,Sand_L,1,1))

World.Map[6]:addProp(Prop.new(10.8,2.9+3,Sand_TR,1,1))
World.Map[6]:addProp(Prop.new(10.8+1,2.9+3,Sand_T,1,1))
World.Map[6]:addProp(Prop.new(10.8+2,2.9+3,Sand_T,1,1))
World.Map[6]:addProp(Prop.new(10.8+3,2.9+3,Sand_T,1,1))
World.Map[6]:addProp(Prop.new(10.8+4,2.9+3,Sand_T,1,1))
World.Map[6]:addProp(Prop.new(10.8+5,2.9+3,Sand_T,1,1))
World.Map[6]:addProp(Prop.new(10.8+6,2.9+3,Sand_TL,1,1))

World.Map[6]:addProp(Prop.new(4.5,4.0,Trash_Can))

World.Map[6]:addProp(Prop.new(17.1,11,ERROBJ))
World.Map[6]:addProp(Prop.new(17.1,11+1,ERROBJ))
World.Map[6]:addProp(Prop.new(17.1,11+2,ERROBJ))
