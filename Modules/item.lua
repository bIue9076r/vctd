Item = {}
Item.i = -1

function Item.new(i,n)
	local tbl = {
		i = i or -1, -- index (Char)
		name = n or "Item ?",
		save = "DEF ",
	}
	
	local mt = {
		__index = Item,
		__call = Item.draw,
	}
	
	return setmetatable(tbl,mt)
end

function Item:draw(x,y)
	local x = x or Plr.x
	local y = y or Plr.y
	local Tx = (SCREEN_X/24)
	local Ty = (SCREEN_Y/16)
	local img, psx, psy
	img = image.getImage(CtS[self.i])
	psx = (((x*25) + 25)/(600))
	psy = (((y*25) + 25)/(400))
	love.graphics.draw(
		img,
		SCREEN_X*psx,
		SCREEN_Y*psy,
		0,
		Tx/img:getWidth(),
		Ty/img:getHeight()
	)
end

function Item:act(key)
	-- Varies
end


ItemBag = {}
ItemBag.items = {}
ItemBag.index = nil
ItemBag.visible = false
ItemBag.page = 1
ItemBag.page_size = 8

function ItemBag.new()
	local tbl = {
		items = {},
	}
	
	local mt = {
		__index = ItemBag,
	}
	
	return setmetatable(tbl,mt)
end

function ItemBag:clear(itm)
	self.items = {}
end

function ItemBag:add(itm)
	table.insert(self.items,itm)
end

function ItemBag:save(file)
	file:NewField("item_VarisaGuitar")
end

function ItemBag:load()
	-- things i guess
end

function ItemBag:draw()
	if self.index and self.items[self.index] then
		self.items[self.index]:draw()
	end
end

function ItemBag:update(dt)
	if self.visible then
		local x,y = love.mouse.getPosition()
		x = 600*(x / SCREEN_X)
		y = 400*(y / SCREEN_Y)
		
		if not(self.ly == y) and not(self.lx == x) then
			if x >= 55 and x <= (490 + 55) then
				if y >= 100 and y <= (100 + 240) then
					self.sx = min(max(1,math.floor((x - 55) / 245) + 1),2)
					self.sy = min(max(1,math.floor((y - 100) / 60) + 1),4)
					self.index = self.sy+(self.sx-1)*(self.page_size/2)
				end
			end
		end
		self.lx, self.ly = x, y
		
		if love.mouse.isDown(2) then
			self.index = nil
		end
	end

	-- todo
	--[[
	if self.index and self.items[self.index] then
		self.items[self.index]:update(dt)
	end
	]]
end

function ItemBag:drawInv()
	if self.visible then
		-- draw inventory
		-- pause game to be safe
		
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			((SCREEN_Y*3)/4)
		)
		
		love.graphics.print({{0,0,0},"Inventory - Page "..self.page},
			(SCREEN_X/10),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.setColor(1,0,0)
		love.graphics.setLineWidth(5)
		local psx, psy
		psx = ((60 + (245 * ((self.sx or 1) - 1)))/600)
		psy = ((105 + (60 * ((self.sy or 1) - 1)))/400)
		love.graphics.rectangle("line",
			SCREEN_X*psx,
			SCREEN_Y*psy,
			((SCREEN_X*47)/120),
			(SCREEN_Y/8)
		)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(1,1,1)
		
		local lo = 1 + ((self.page-1) * self.page_size)
		local hi = self.page_size + ((self.page-1) * self.page_size)
		
		local tbl = {}
		for i = lo,hi do
			table.insert(tbl,self.items[i])
		end
		
		for x = 1,2 do
			for y = 1,4 do
				local i = y+(x-1)*(self.page_size/2)
				if self.items[i] then
					local psx, psy
					psx = ((60+(245 * (x-1)))/600)
					psy = ((105+(60 * (y-1)))/400)
					love.graphics.print({{0,0,0},self.items[i].name},
						SCREEN_X*psx,
						SCREEN_Y*psy,
						0,
						SCREEN_X/600,SCREEN_Y/400
					)
				end
			end
		end
	end
end

function ItemBag:Keypressed(key)
	if key == "i" then
		self.visible = not self.visible
		if (World.showMap) then
			World.showMap = false
		end
		return
	elseif key == "escape" or key == "o" then
		self.index = nil
	end
	if self.index and self.items[self.index] then
		self.items[self.index]:act(key)
	end
end
