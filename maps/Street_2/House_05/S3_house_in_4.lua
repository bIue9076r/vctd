World.Map[35] = MapObj.new(Planks)
World.Map[35]:setLineH(7,1,11,Wall)
World.Map[35]:setLineV(1,1,7,Void)
World.Map[35]:setLineV(2,1,7,Void)
World.Map[35]:setLineV(3,1,7,Void)
World.Map[35]:setLineV(4,1,7,Void)
World.Map[35]:setLineV(5,1,7,Void)
World.Map[35]:setLineV(6,1,7,Wall)

World.Map[35]:setTile(11,6,BigTable_B)
World.Map[35]:setTile(11,5,BigTable_T)

World.Map[35]:addWall(Box.new(0,0,12,14))
World.Map[35]:addWall(Box.new(12,0,10,2))

World.Map[35]:addProp(Prop.new(12,2,Bed_1_1,1,1))
World.Map[35]:addProp(Prop.new(13,2,Bed_1_2,1,1))
World.Map[35]:addProp(Prop.new(12,3,Bed_1_3,1,1))
World.Map[35]:addProp(Prop.new(13,3,Bed_1_4,1,1))
World.Map[35]:addProp(Prop.new(12,4,Bed_1_5,1,1))
World.Map[35]:addProp(Prop.new(13,4,Bed_1_6,1,1))

World.Map[35]:addWall(Box.new(12,3.8,2,0.3))
World.Map[35]:addWall(Box.new(20.4,8.88,1.6,2))

World.Map[35]:addWall(Box.new(21.9,2,0.1,1,1,1,function()
	Map = World.Map[33]
	setPlr(8.5,Plr.y)
end))

if House.house[3].HouseTrait == "Neat" then
	
end

if House.house[3].HouseTrait == "Messy" then
	World.Map[35]:addProp(Prop.new(13.9,9.0,Trash_P))
	World.Map[35]:addProp(Prop.new(13.4,9.0,Trash_P))
	World.Map[35]:addProp(Prop.new(13.9,8.5,Trash_P))
	World.Map[35]:addProp(Prop.new(13.4,8.5,Trash_P))
	
	World.Map[35]:addProp(Prop.new(18.9,12.1,Trash_P))
	World.Map[35]:addProp(Prop.new(18.4,12.1,Trash_P))
	World.Map[35]:addProp(Prop.new(18.9,11.6,Trash_P))
	World.Map[35]:addProp(Prop.new(18.4,11.6,Trash_P))
	
	World.Map[35]:addProp(Prop.new(18.2,6.2,Trash_P))
	World.Map[35]:addProp(Prop.new(17.7,6.2,Trash_P))
	World.Map[35]:addProp(Prop.new(18.2,5.7,Trash_P))
	World.Map[35]:addProp(Prop.new(17.7,5.7,Trash_P))
end

if House.house[3].HouseTrait == "Fanatic" then
	World.Map[35]:addProp(Prop.new(14.6,0.5,Poster_Bu))
	World.Map[35]:addProp(Prop.new(19.2,0.25,Poster_Or))
	
	World.Map[35]:addProp(Prop.new(19.0,11.6,Box_1_1))
	World.Map[35]:addProp(Prop.new(20.0,11.6,Box_1_2))
	World.Map[35]:addProp(Prop.new(19.0,12.6,Box_1_3))
	World.Map[35]:addProp(Prop.new(20.0,12.6,Box_1_4))
	
	World.Map[35]:addProp(Prop.new(13.0,10.8,Box_1_1))
	World.Map[35]:addProp(Prop.new(14.0,10.8,Box_1_2))
	World.Map[35]:addProp(Prop.new(13.0,11.8,Box_1_3))
	World.Map[35]:addProp(Prop.new(14.0,11.8,Box_1_4))
	
	World.Map[35]:addProp(Prop.new(12.5,5.4,Box_1_1))
	World.Map[35]:addProp(Prop.new(13.5,5.4,Box_1_2))
	World.Map[35]:addProp(Prop.new(12.5,6.4,Box_1_3))
	World.Map[35]:addProp(Prop.new(13.5,6.4,Box_1_4))
end
