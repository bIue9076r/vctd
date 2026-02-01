World.Map[63] = MapObj.new(Planks)

World.Map[63]:setLineH(1,1,4,Wall)
World.Map[63]:setLineH(5,1,11,Brick)
World.Map[63]:setLineH(1,2,4,Wall)
World.Map[63]:setLineH(1,3,4,Wall)
World.Map[63]:setLineH(1,4,4,Wall)
World.Map[63]:setLineH(1,5,4,Wall)
World.Map[63]:setLineH(1,6,4,Wall)
World.Map[63]:setLineH(1,7,4,Wall)

World.Map[63]:setTile(5,2,Planks,AntiVoid)
World.Map[63]:setLineV(5,3,5,Stairs)
World.Map[63]:setLineV(6,3,5,Planks,Bar_L)

World.Map[63]:setTile(7,1,Brick_D)
World.Map[63]:setTile(6,7,Carpet_V)

World.Map[63]:setTile(10,5,BigTable_B)
World.Map[63]:setTile(10,4,BigTable_T)

World.Map[63]:addProp(Prop.new(18.75,7,TV_T))

World.Map[63]:addNpc(Npc.new(18.75,8,TV_B,3,0,function()
	
end))

World.Map[63]:addProp(Prop.new(15.7,9,Couch_6,1))
World.Map[63]:addProp(Prop.new(15.7,8,Couch_4,1))
World.Map[63]:addProp(Prop.new(15.7,7,Couch_2,1))

World.Map[63]:addProp(Prop.new(14.7,9,Couch_5,1))
World.Map[63]:addProp(Prop.new(14.7,8,Couch_3,1))
World.Map[63]:addProp(Prop.new(14.7,7,Couch_1,1))

World.Map[63]:addWall(Box.new(0,0,8,14))
World.Map[63]:addWall(Box.new(8,0,4,2))
World.Map[63]:addWall(Box.new(12,0,2,1))
World.Map[63]:addWall(Box.new(14,0,8,2))
World.Map[63]:addWall(Box.new(10,4,0.1,6))
World.Map[63]:addWall(Box.new(8,4,2,0.1))

World.Map[63]:addWall(Box.new(18.4,6.88,1.6,2))

World.Map[63]:addWall(Box.new(9.9,13.9,2.2,0.1,1,1,function()
	Map = World.Map[62]
	setPlr(10.5,0.5)
end))

World.Map[63]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[64]
	setPlr(Plr.x,5.25)
end))

World.Map[63]:addWall(Box.new(11.9,1,2.2,0.1,1,1,function()
	Map = World.Map[66]
	setPlr(12.5,12.5)
end))

World.Map[63]:addWall(Box.new(8,1.9,0.1,2.2,1,1,function()
	Map = World.Map[65]
	setPlr(20.5,Plr.y)
end))

if House.house[8].HouseTrait == "Neat" then
	World.Map[63]:addProp(Prop.new(20.5,12.5,Vase))
	World.Map[63]:addProp(Prop.new(20.5,11.5,Flowers,1))
	
	World.Map[63]:addProp(Prop.new(20.5,3,Vase))
	World.Map[63]:addProp(Prop.new(20.5,2,Flowers,1))
end

if House.house[8].HouseTrait == "Messy" then
	World.Map[63]:addProp(Prop.new(19.8,10.3,Trash_P))
	World.Map[63]:addProp(Prop.new(19.3,10.3,Trash_P))
	World.Map[63]:addProp(Prop.new(19.8,9.8,Trash_P))
	World.Map[63]:addProp(Prop.new(19.3,9.8,Trash_P))
	
	World.Map[63]:addProp(Prop.new(11.0,7.5,Trash_P))
	World.Map[63]:addProp(Prop.new(10.5,7.5,Trash_P))
	World.Map[63]:addProp(Prop.new(11.0,7.0,Trash_P))
	World.Map[63]:addProp(Prop.new(10.5,7.0,Trash_P))
	
	World.Map[63]:addProp(Prop.new(19.5,3.0,Trash_P))
	World.Map[63]:addProp(Prop.new(19.0,3.0,Trash_P))
	World.Map[63]:addProp(Prop.new(19.5,2.5,Trash_P))
	World.Map[63]:addProp(Prop.new(19.0,2.5,Trash_P))
	
	World.Map[63]:addProp(Prop.new(20.5,12.5,Vase_C))
	World.Map[63]:addProp(Prop.new(20.5,3,Vase_C))
end

if House.house[8].HouseTrait == "Fanatic" then
	World.Map[63]:addProp(Prop.new(18.4,0.75,Poster_Ye,1))
	World.Map[63]:addProp(Prop.new(20.3,0.25,Poster_Gr,1))
	World.Map[63]:addProp(Prop.new(10.4,0.75,Poster_Bl,1))
	
	World.Map[63]:addProp(Prop.new(19,2.6,Box_1_1))
	World.Map[63]:addProp(Prop.new(20,2.6,Box_1_2))
	World.Map[63]:addProp(Prop.new(19,3.6,Box_1_3))
	World.Map[63]:addProp(Prop.new(20,3.6,Box_1_4))
	
	World.Map[63]:addProp(Prop.new(18.7,11.1,Box_1_1))
	World.Map[63]:addProp(Prop.new(19.7,11.1,Box_1_2))
	World.Map[63]:addProp(Prop.new(18.7,12.1,Box_1_3))
	World.Map[63]:addProp(Prop.new(19.7,12.1,Box_1_4))
	
	World.Map[63]:addProp(Prop.new(10.4,6.6,Box_1_1))
	World.Map[63]:addProp(Prop.new(11.4,6.6,Box_1_2))
	World.Map[63]:addProp(Prop.new(10.4,7.6,Box_1_3))
	World.Map[63]:addProp(Prop.new(11.4,7.6,Box_1_4))
end
