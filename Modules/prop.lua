Prop = {}
Prop.x = 0
Prop.y = 0
Prop.c = -1
Prop.p = 0
Prop.g = 0

function Prop.new(x,y,c,p,g,o)
	local tbl = {
		x = x or 0,
		y = y or 0,
		c = c or -1,
		p = p or 0,
		g = g or 0,
		onTimeChange = o or function()
			
		end,
	}
	
	local mt = {
		__index = Prop,
		__call = Prop.draw,
	}
	
	return setmetatable(tbl,mt)
end

function Prop:draw()
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

function Prop:Ghost()
	self.g = 1
end

function Prop:noGhost()
	self.g = 0
end

function Prop:onTimeChange() -- Hourly thing
	
end
