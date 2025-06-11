World.Map[22] = MapObj.new(Planks)

World.Map[22]:setLineV(1,1,7,Void)
World.Map[22]:setLineV(2,1,7,Void)
World.Map[22]:setLineV(3,1,7,Void)
World.Map[22]:setLineV(4,1,7,Void)
World.Map[22]:setLineH(5,1,11,Wall)
World.Map[22]:setTile(5,2,Planks)
World.Map[22]:setLineV(5,3,4,Stairs)
World.Map[22]:setTile(5,5,Stairs,AntiVoid)
World.Map[22]:setLineV(6,3,5,Planks,Bar_L)
World.Map[22]:setTile(6,6,Planks,Bar_TL)
World.Map[22]:setTile(5,6,Planks,Bar_T)

World.Map[22]:addProp(Prop.new(17,5,ERROBJ))
World.Map[22]:addProp(Prop.new(18,5,ERROBJ))
World.Map[22]:addProp(Prop.new(17,6,ERROBJ))
World.Map[22]:addProp(Prop.new(18,6,ERROBJ))

World.Map[22]:addProp(Prop.new(11,11,ERROBJ))
World.Map[22]:addProp(Prop.new(12,11,ERROBJ))
World.Map[22]:addProp(Prop.new(11,12,ERROBJ))
World.Map[22]:addProp(Prop.new(12,12,ERROBJ))

World.Map[22]:addProp(Prop.new(18,10,ERROBJ))
World.Map[22]:addProp(Prop.new(19,10,ERROBJ))
World.Map[22]:addProp(Prop.new(18,11,ERROBJ))
World.Map[22]:addProp(Prop.new(19,11,ERROBJ))

World.Map[22]:addWall(Box.new(0,0,8,14))
World.Map[22]:addWall(Box.new(8,0,14,2))
World.Map[22]:addWall(Box.new(10,4,0.1,6))
World.Map[22]:addWall(Box.new(8,10,2,0.1))

World.Map[22]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[21]
	setPlr(Plr.x,7.75)
end))

if House[2].HouseTrait == "Neat" then
	
end

if House[2].HouseTrait == "Messy" then
	
end

if House[2].HouseTrait == "Fanatic" then
	
end
