Item = {}
Item.i = -1

function Item.new(i)
	local tbl = {
		i = i or -1, -- index (Char)
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

function ItemBag:draw()
	if self.index and self.items[self.index] then
		self.items[self.index]:draw()
	end
end

function ItemBag:update(dt)
	if self.visible then
		local x,y = love.mouse.getPosition()
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
	end
end

function ItemBag:drawInv()
	if self.visible then
		-- draw inventory
		-- pause game to be safe
		love.graphics.rectangle("fill",50,50,500,300)
		love.graphics.print({{0,0,0},"Inventory - Page "..self.page},60,60)
		
		love.graphics.setColor(1,0,1)
		love.graphics.rectangle("fill",55,100,490,240)
		love.graphics.setColor(0,1,1)
		love.graphics.rectangle("fill",60,105,235,50)
		love.graphics.rectangle("fill",305,105,235,50)
		
		love.graphics.rectangle("fill",60,165,235,50)
		love.graphics.rectangle("fill",305,165,235,50)
		
		love.graphics.rectangle("fill",60,225,235,50)
		love.graphics.rectangle("fill",305,225,235,50)
		
		love.graphics.rectangle("fill",60,285,235,50)
		love.graphics.rectangle("fill",305,285,235,50)
		love.graphics.setColor(1,1,1)
		
		love.graphics.setColor(1,0,0)
		love.graphics.setLineWidth(5)
		love.graphics.rectangle("line",60 + (245 * ((self.sx or 1) - 1)),105 + (60 * ((self.sy or 1) - 1)),235,50)
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
					love.graphics.print({{0,0,0},"Item#"..x.."-"..y},60+(245 * (x-1)),105+(60 * (y-1)))
				end
			end
		end
	end
end

function ItemBag:Keypressed(key)
	if key == "i" then
		self.visible = not self.visible
		return
	end
	if key == "return" then
		if self.index and self.items[self.index] then
			self.items[self.index]:act(key)
		end
	end
end
