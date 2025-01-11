Actor = {}
Actor.c = Varisa
Actor.x = 0
Actor.y = 0

function Actor.new(c,x,y)
	local tbl = {
		c = c or Varisa,
		x = x or 0,
		y = y or 0,
	}
	
	local mt = {
		__index = Actor,
	}
	
	return setmetatable(tbl,mt)
end

function Actor:draw()
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

Backround = {}
Backround.map = {} -- map

function Backround.new(m)
	local tbl = {
		map = m or {},
	}
	
	local mt = {
		__index = Backround,
	}
	
	return setmetatable(tbl,mt)
end

Scene = {}
Scene.Actors = {}
Scene.Backround = Backround.new()
Scene.Hour = 0
Scene.Min = 0
Scene.dtbl = {
	s = "......",
	n = Varisa,
}
Scene.dticker = ticker.new()
Scene.tickGoal = 0
Scene.Next = 1 -- Map location

function Scene.new(m,g,t)
	local tbl = {
		Actors = {},
		Backround = Backround.new(m),
		Hour = 0,
		Min = 0,
		dtbl = {
			s = "......",
			n = Varisa,
		},
		tickGoal = g or 0,
		transition = t or function(self,t)
			GameState = "What? Broken Animation?"
		end,
	}
	
	local mt = {
		__index = Scene,
	}
	
	return setmetatable(tbl,mt)
end

function Scene.lerp(a,b,t)
	return b*t - a*(t - 1)
end

function Scene:skyTint()
	local h1 = self.Hour
	local h2 = h1 + 1
	local tm = (self.Min / 60)
	if h2 >= 24 then h2 = 0 end
	local r1 = Sky[h1][1]
	local g1 = Sky[h1][2]
	local b1 = Sky[h1][3]
	local r2 = Sky[h2][1]
	local g2 = Sky[h2][2]
	local b2 = Sky[h2][3]
	
	love.graphics.setColor(
		Scene.lerp(r1,r2,tm),
		Scene.lerp(g1,g2,tm),
		Scene.lerp(b1,b2,tm)
	)
end

function Scene:drawBackTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = self.Backround.map:getTile(j,i)
			if t and t.f == 0 then
				local img, psx, psy
				local Tx = (SCREEN_X/12)
				local Ty = (SCREEN_Y/8)
				img = image.getImage(TtS[t.t])
				psx = ((25 + (j-1)*50)/(600))
				psy = ((25 + (i-1)*50)/(400))
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
	end
end

function Scene:drawForeTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = self.Backround.map:getTile(j,i)
			if t and t.f == 1 then
				local img, psx, psy
				local Tx = (SCREEN_X/12)
				local Ty = (SCREEN_Y/8)
				img = image.getImage(TtS[t.t])
				psx = ((25 + (j-1)*50)/(600))
				psy = ((25 + (i-1)*50)/(400))
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
	end
end

function Scene:draw()
	-- Time stuff --
	self:skyTint()
	--
	
	self:drawBackTiles()
	self:drawActors()
	self:drawForeTiles()
	love.graphics.setColor(1,1,1)
end

function Scene:drawActors()
	for i,v in pairs(self.Actors) do
		v:draw()
	end
end

function Scene:drawDialoge()
	if self.IsTalking then
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			(SCREEN_Y/4),
		25)
		
		love.graphics.print(
			{{0,0,0},Names[self.dtbl.n]..":"},
			(SCREEN_X/8),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print(
			{{0,0,0},spString(self.dtbl.s,1,self.dticker)},
			(SCREEN_X/8),
			((SCREEN_Y*9)/40),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if self.dticker:get() < (#self.dtbl.s + DialogeBuffer) then
			self.dticker()
		else
			-- stop talking
			self.dtbl = nil
			self.IsTalking = false
			self.dticker:reset()
		end
	end
end

function Scene:transition(self,t)
	GameState = "What? Broken Animation?"
end
