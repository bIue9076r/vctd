Tile = {}
Tile.t = Grass_1
Tile.f = 0

function Tile.new(t,f)
	local tbl = {
		t = t or Grass_1,
		f = f or 0
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
MapObj.npcs = {} -- Todo NPC objects
MapObj.dboxs = {}

function MapObj.new(bt,wtbl,ntbl)
	local tbl = {
		sector = {},
		walls = wtbl or {},
		npcs = ntbl or {},
		dboxs = {},
	}
	
	for i = 1, MapObj.Y do
		tbl.sector[i] = tbl.sector[i] or {}
		for j = 1, MapObj.X do
			table.insert(tbl.sector[i],
				Tile.new(bt or Grass_1, 0)
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
				Tile.new(bt or Grass_1, 0)
			)
		end
	end
end

function MapObj:setTile(x,y,t,f)
	x = x or 1
	y = y or 1
	t = t or Grass_1
	f = f or 0
	if x <= 0 then x = 1 end
	if y <= 0 then y = 1 end
	if x > MapObj.X then x = MapObj.X end
	if y > MapObj.Y then y = MapObj.Y end
	self.sector[y][x].t = t
	self.sector[y][x].f = f
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

function MapObj:setLineH(x,y,x2,t,f)
	x = x or 1
	y = y or 1
	x2 = x2 or x
	t = t or Grass_1
	f = f or 0
	
	for j = x, x2 do
		self.sector[y][j].t = t
		self.sector[y][j].f = f
	end
end

function MapObj:setLineV(x,y,y2,t,f)
	x = x or 1
	y = y or 1
	y2 = y2 or y
	t = t or Grass_1
	f = f or 0
	
	for i = y, y2 do
		self.sector[i][x].t = t
		self.sector[i][x].f = f
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

function MapObj:getDboxs()
	return self.dboxs
end
