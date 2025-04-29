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
	if self.index then
		self.items[self.index]:draw()
	end
end

function ItemBag:update(dt)
	if self.visible then
		print(dt)
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
		love.graphics.rectangle("fill",55,100,240,50)
		love.graphics.rectangle("fill",55+250,100,240,50)
		
		love.graphics.rectangle("fill",55,100+60,240,50)
		love.graphics.rectangle("fill",55+250,100+60,240,50)
		
		love.graphics.rectangle("fill",55,100+60+60,240,50)
		love.graphics.rectangle("fill",55+250,100+60+60,240,50)
		
		love.graphics.rectangle("fill",55,100+60+60+60,240,50)
		love.graphics.rectangle("fill",55+250,100+60+60+60,240,50)
		love.graphics.setColor(1,1,1)
		
		local lo = 1 + ((self.page-1) * self.page_size)
		local hi = self.page_size + ((self.page-1) * self.page_size)
		
		local tbl = {}
		for i = lo,hi do
			table.insert(tbl,self.items[i])
		end
		
		--[[for i,v in pairs(self.items) do
			
			if self.index and i == self.index then
				
			end
		end]]
	end
end

function ItemBag:Keypressed(key)
	print(key)
	if key == "i" then
		self.visible = not self.visible
		return
	end
	if self.index then
		self.items[self.index]:act(key)
	end
end
