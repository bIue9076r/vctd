World.Map[15] = MapObj.new(Planks)

World.Map[15]:setLineH(1,1,4,Wall)
World.Map[15]:setLineH(5,1,11,Brick)
World.Map[15]:setLineH(1,2,4,Wall)
World.Map[15]:setLineH(1,3,4,Wall)
World.Map[15]:setLineH(1,4,4,Wall)
World.Map[15]:setLineH(1,5,4,Wall)
World.Map[15]:setLineH(1,6,4,Wall)
World.Map[15]:setLineH(1,7,4,Wall)

World.Map[15]:setTile(5,2,Planks,AntiVoid)
World.Map[15]:setLineV(5,3,5,Stairs)
World.Map[15]:setLineV(6,3,5,Planks,Bar_L)

World.Map[15]:setTile(7,1,Brick_D)
World.Map[15]:setTile(6,7,Carpet_V)

World.Map[15]:setTile(10,5,BigTable_B)
World.Map[15]:setTile(10,4,BigTable_T)

World.Map[15]:addProp(Prop.new(18.75,7,TV_T))

World.Map[15]:addNpc(Npc.new(18.75,8,TV_B,3,0,function()
	
end))

World.Map[15]:addProp(Prop.new(15.7,9,ERROBJ,1))
World.Map[15]:addProp(Prop.new(15.7,8,ERROBJ,1))
World.Map[15]:addProp(Prop.new(15.7,7,ERROBJ,1))
World.Map[15]:addProp(Prop.new(15.7,6,ERROBJ,1))

World.Map[15]:addProp(Prop.new(14.7,9,ERROBJ,1))
World.Map[15]:addProp(Prop.new(14.7,8,ERROBJ,1))
World.Map[15]:addProp(Prop.new(14.7,7,ERROBJ,1))
World.Map[15]:addProp(Prop.new(14.7,6,ERROBJ,1))

World.Map[15]:addWall(Box.new(0,0,8,14))
World.Map[15]:addWall(Box.new(8,0,4,2))
World.Map[15]:addWall(Box.new(12,0,2,1))
World.Map[15]:addWall(Box.new(14,0,8,2))
World.Map[15]:addWall(Box.new(10,2,0.1,8))

World.Map[15]:addWall(Box.new(9.9,13.9,2.2,0.1,1,1,function()
	Map = World.Map[14]
	setPlr(10.5,0.5)
end))

World.Map[15]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[17]
	setPlr(Plr.x,5.25)
end))

World.Map[15]:addWall(Box.new(11.9,1,2.2,0.1,1,1,function()
	Map = World.Map[16]
	setPlr(12.5,12.5)
end))

if House[1].HouseTrait == "Neat" then
	World.Map[15]:addProp(Prop.new(20.5,12.5,Vase))
	World.Map[15]:addProp(Prop.new(20.5,11.5,Flowers,1))
	World.Map[15]:addProp(Prop.new(10.5,3,Vase))
	World.Map[15]:addProp(Prop.new(10.5,2,Flowers,1))
	World.Map[15]:addProp(Prop.new(20.5,3,Vase))
	World.Map[15]:addProp(Prop.new(20.5,2,Flowers,1))
end

if House[1].HouseTrait == "Messy" then
	World.Map[15]:addProp(Prop.new(19.8,10.3,Trash_P))
	World.Map[15]:addProp(Prop.new(19.3,10.3,Trash_P))
	World.Map[15]:addProp(Prop.new(19.8,9.8,Trash_P))
	World.Map[15]:addProp(Prop.new(19.3,9.8,Trash_P))
	
	World.Map[15]:addProp(Prop.new(11.0,7.5,Trash_P))
	World.Map[15]:addProp(Prop.new(10.5,7.5,Trash_P))
	World.Map[15]:addProp(Prop.new(11.0,7.0,Trash_P))
	World.Map[15]:addProp(Prop.new(10.5,7.0,Trash_P))
	
	World.Map[15]:addProp(Prop.new(19.5,3.0,Trash_P))
	World.Map[15]:addProp(Prop.new(19.0,3.0,Trash_P))
	World.Map[15]:addProp(Prop.new(19.5,2.5,Trash_P))
	World.Map[15]:addProp(Prop.new(19.0,2.5,Trash_P))
	
	World.Map[15]:addProp(Prop.new(20.5,12.5,Vase_C))
	World.Map[15]:addProp(Prop.new(10.5,3,Vase_C))
	World.Map[15]:addProp(Prop.new(20.5,3,Vase_C))
end

if House[1].HouseTrait == "Fanatic" then
	
end
