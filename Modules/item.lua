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
ItemBag.draw = false

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

function ItemBag:drawInv()
	print(tostring(self.draw))
	if self.draw then
		-- draw inventory
		-- pause game to be safe
		love.graphics.rectangle("fill",50,50,500,300)
		love.graphics.print({{0,0,0},"Inventory:"},60,60)
		for i,v in pairs(self.items) do
			
			if self.index and i == self.index then
				
			end
		end
	end
end

function ItemBag:Keypressed(key)
	print(key)
	if self.index then
		self.items[self.index]:act(key)
	end
end
