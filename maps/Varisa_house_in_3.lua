World.Map[10] = MapObj.new(Planks)

World.Map[10]:setLineV(1,1,7,Void)
World.Map[10]:setLineV(2,1,7,Void)
World.Map[10]:setLineV(3,1,7,Void)
World.Map[10]:setLineV(4,1,7,Void)
World.Map[10]:setLineH(5,1,11,Wall)
World.Map[10]:setTile(5,2,Planks)
World.Map[10]:setLineV(5,3,4,Stairs)
World.Map[10]:setTile(5,5,Stairs,AntiVoid)
World.Map[10]:setLineV(6,3,5,Planks,Bar_L)
World.Map[10]:setTile(6,6,Planks,Bar_TL)
World.Map[10]:setTile(5,6,Planks,Bar_T)

World.Map[10]:addProp(Prop.new(12,0.5,Poster_Pu))
World.Map[10]:addProp(Prop.new(19,0.5,Flag))

World.Map[10]:addProp(Prop.new(20,2,ERROBJ))
World.Map[10]:addProp(Prop.new(21,2,ERROBJ))
World.Map[10]:addProp(Prop.new(20,3,ERROBJ))
World.Map[10]:addProp(Prop.new(21,3,ERROBJ))
World.Map[10]:addProp(Prop.new(20,4,ERROBJ))
World.Map[10]:addProp(Prop.new(21,4,ERROBJ))

World.Map[10]:addProp(Prop.new(20.5,12.5,Trash_Can))

World.Map[10]:addProp(Prop.new(13,12,ERROBJ))
World.Map[10]:addProp(Prop.new(14,12,ERROBJ))
World.Map[10]:addProp(Prop.new(15,12,ERROBJ))

World.Map[10]:addProp(Prop.new(20.5,5,Amp))
World.Map[10]:addProp(Prop.new(20,5,B_Guitar_R))

World.Map[10]:addWall(Box.new(0,0,8,14))
World.Map[10]:addWall(Box.new(8,0,14,2))
World.Map[10]:addWall(Box.new(10,4,0.1,6))
World.Map[10]:addWall(Box.new(8,10,2,0.1))

World.Map[10]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[9]
	setPlr(Plr.x,7.75)
end))
