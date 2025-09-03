Npc = {}
Npc.x = 0
Npc.y = 0
Npc.c = -1
Npc.i = 0
Npc.g = 0

function Npc.new(x,y,c,i,g,o,f)
	local tbl = {
		x = x or 0,
		y = y or 0,
		c = c or -1,	-- Char
		i = i or 0,		-- Index
		g = g or 0,		-- Ghost
		f = f or nil;	-- Find Value
		onTimeChange = o or function()
			
		end,
	}
	
	local mt = {
		__index = Npc,
		__call = Npc.draw,
	}
	
	return setmetatable(tbl,mt)
end

function Npc:draw()
	if not (self.g == 1) then
		local Tx = (SCREEN_X/24)
		local Ty = (SCREEN_Y/16)
		local img, psx, psy
		img = image.getImage(CtS[self.c])
		psx = (((self.x*25) + 25)/(600))
		psy = (((self.y*25) + 25)/(400))
		love.graphics.draw(
			img,
			SCREEN_X*psx,
			SCREEN_Y*psy,
			0,
			Tx/img:getWidth(),
			Ty/img:getHeight()
		)
	end
end

function Npc:index(i)
	self.i = i or 0
end

function Npc:Ghost()
	self.g = 1
end

function Npc:noGhost()
	self.g = 0
end

function Npc:onTimeChange() -- Hourly thing
	
end
