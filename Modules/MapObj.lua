Tile = {}
Tile.bt = Grass_1
Tile.ft = nil

function Tile.new(bt,ft)
	local tbl = {
		bt = bt or Grass_1,	-- Back Tile
		ft = ft or nil,		-- Fore Tile
	}
	
	local mt = {
		__index = Tile,
	}
	
	return setmetatable(tbl,mt)
end

MapObj = {}
MapObj.X = 11
MapObj.Y = 7
MapObj.sector = {}
MapObj.walls = {}
MapObj.npcs = {}
MapObj.props = {} -- Todo NPC items?
MapObj.dboxs = {}

function MapObj.new(bt,wtbl,ntbl,ptbl)
	local tbl = {
		sector = {},
		walls = wtbl or {},
		npcs = ntbl or {},
		props = ptbl or {},
		dboxs = {},
	}
	
	for i = 1, MapObj.Y do
		tbl.sector[i] = tbl.sector[i] or {}
		for j = 1, MapObj.X do
			table.insert(tbl.sector[i],
				Tile.new(bt or Grass_1, nil)
			)
		end
	end
	
	for i,v in pairs(tbl.npcs) do
		tbl.dboxs[i] = Box.new(
			v.x - 1,
			v.y - 1,
			3, 3
		)
		tbl.dboxs[i].i = i
	end
	
	local mt = {
		__index = MapObj,
	}
	
	return setmetatable(tbl,mt)
end

function MapObj:setBaseTile(bt)
	for i = 1, MapObj.Y do
		self.sector[i] = self.sector[i] or {}
		for j = 1, MapObj.X do
			table.insert(self.sector[i],
				Tile.new(bt or Grass_1, nil)
			)
		end
	end
end

function MapObj:setTile(x,y,bt,ft)
	x = x or 1
	y = y or 1
	bt = bt or Grass_1
	ft = ft or nil
	if x <= 0 then x = 1 end
	if y <= 0 then y = 1 end
	if x > MapObj.X then x = MapObj.X end
	if y > MapObj.Y then y = MapObj.Y end
	self.sector[y][x].bt = bt
	self.sector[y][x].ft = ft
end

function MapObj:getTile(x,y)
	x = x or 1
	y = y or 1
	if x <= 0 then x = 1 end
	if y <= 0 then y = 1 end
	if x > MapObj.X then x = MapObj.X end
	if y > MapObj.Y then y = MapObj.Y end
	return self.sector[y][x]
end

function MapObj:setLineH(x,y,x2,bt,ft)
	x = x or 1
	y = y or 1
	x2 = x2 or x
	bt = bt or Grass_1
	ft = ft or nil
	
	for j = x, x2 do
		self.sector[y][j].bt = bt
		self.sector[y][j].ft = ft
	end
end

function MapObj:setLineV(x,y,y2,bt,ft)
	x = x or 1
	y = y or 1
	y2 = y2 or y
	bt = bt or Grass_1
	ft = ft or nil
	
	for i = y, y2 do
		self.sector[i][x].bt = bt
		self.sector[i][x].ft = ft
	end
end

function MapObj:addWall(wall)
	if wall then
		table.insert(self.walls, wall)
	end
end

function MapObj:getWalls()
	return self.walls
end

function MapObj:addNpc(npc)
	if npc then
		table.insert(self.npcs, npc)
		self.dboxs[#self.npcs] = Box.new(
			self.npcs[#self.npcs].x - 1,
			self.npcs[#self.npcs].y - 1,
			3, 3
		)
		self.dboxs[#self.npcs].i = #self.npcs
	end
end

function MapObj:getNpcs()
	return self.npcs
end

function MapObj:addProp(prop)
	if prop then
		table.insert(self.props, prop)
	end
end

function MapObj:getProps()
	return self.props
end

function MapObj:getDboxs()
	return self.dboxs
end
