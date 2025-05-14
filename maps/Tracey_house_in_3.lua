World.Map[4] = MapObj.new(Planks)

World.Map[4]:setLineV(1,1,7,Void)
World.Map[4]:setLineV(2,1,7,Void)
World.Map[4]:setLineV(3,1,7,Void)
World.Map[4]:setLineV(4,1,7,Void)
World.Map[4]:setLineH(5,1,11,Wall)
World.Map[4]:setTile(5,2,Planks)
World.Map[4]:setLineV(5,3,4,Stairs)
World.Map[4]:setTile(5,5,Stairs,AntiVoid)
World.Map[4]:setLineV(6,3,5,Planks,Bar_L)
World.Map[4]:setTile(6,6,Planks,Bar_TL)
World.Map[4]:setTile(5,6,Planks,Bar_T)

World.Map[4]:addProp(Prop.new(12,0.5,ERROBJ))
World.Map[4]:addProp(Prop.new(19,0.5,ERROBJ))

World.Map[4]:addProp(Prop.new(20,2,ERROBJ))
World.Map[4]:addProp(Prop.new(21,2,ERROBJ))
World.Map[4]:addProp(Prop.new(20,3,ERROBJ))
World.Map[4]:addProp(Prop.new(21,3,ERROBJ))
World.Map[4]:addProp(Prop.new(20,4,ERROBJ))
World.Map[4]:addProp(Prop.new(21,4,ERROBJ))

World.Map[4]:addWall(Box.new(0,0,8,14))
World.Map[4]:addWall(Box.new(8,0,14,2))
World.Map[4]:addWall(Box.new(10,4,0.1,6))
World.Map[4]:addWall(Box.new(8,10,2,0.1))

World.Map[4]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[3]
	setPlr(Plr.x,7.75)
end))
