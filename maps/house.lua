Map_Your_House_S_E = {}

for i = 1,7 do
	Map_Your_House_S_E[i] = Map_Your_House_S_E[i] or {}
	for j = 1,11 do
		table.insert(Map_Your_House_S_E[i],
			Tile.new(Planks)
		)
	end
end

Map_Your_House_S_E[4][1] = Tile.new(Wall)
for i = 4,11 do
	Map_Your_House_S_E[4][i] = Tile.new(Wall)
end

Map_Your_House_S_E[6][1] = Tile.new(Carpet,1,1)
Map_Your_House_S_E[6][2] = Tile.new(Carpet)

Walls_Your_House_S_E = {
	Box.new(0,6,2,2),
	Box.new(6,6,16,2),
	Box.new(0,10,0.5,2,1,1,function()
		print("trigger box")
	end)
}

Npcs_Your_House_S_E = {
	{x=10,y=9,c=Tracey,i=1},
}

Npc_Dbox_Your_House_S_E = {}
for i,v in pairs(Npcs_Your_House_S_E) do
	Npc_Dbox_Your_House_S_E[i] = Box.new(
		v.x - 1,
		v.y - 1,
		3, 3
	)
	Npc_Dbox_Your_House_S_E[i].i = i
end
