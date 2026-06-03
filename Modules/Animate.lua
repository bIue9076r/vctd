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
Scene.darkness = 0
Scene.dtbl = {
	s = "......",
	n = Varisa,
	v = "Normal",
}
Scene.dticker = ticker.new()
Scene.tickGoal = 0
Scene.Next = 1
Scene.LastDialogueBuffer = 50
Scene.vars = {}

function Scene.new(m,g,t)
	local tbl = {
		Actors = {},
		Backround = Backround.new(m),
		Hour = 0,
		Min = 0,
		darkness = 0,
		dtbl = {
			s = "......",
			n = Varisa,
			v = "Normal",
		},
		tickGoal = g or 0,
		transition = t or function(self,t)
			GameState = "What? Broken Animation?"
		end,
		AfterEffect = function(self)
	
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

function Scene:clearVars()
	for i, v in pairs(self.vars) do
		self.vars[i] = nil
	end
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

	local bh = 0.2*self.darkness
	
	love.graphics.setColor(
		Scene.lerp(r1,r2,tm) - bh,
		Scene.lerp(g1,g2,tm) - bh,
		Scene.lerp(b1,b2,tm) - bh
	)
end

function Scene:drawBackTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = self.Backround.map:getTile(j,i)
			if t then
				local img, psx, psy
				local Tx = (SCREEN_X/12)
				local Ty = (SCREEN_Y/8)
				img = image.getImage(TtS[t.bt])
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
			if t and t.ft then
				local img, psx, psy
				local Tx = (SCREEN_X/12)
				local Ty = (SCREEN_Y/8)
				img = image.getImage(TtS[t.ft])
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

function Scene:Say(s,n,v)
	self.IsTalking = true
	self.dtbl = {
		s = s or "",
		n = n or 0,
		v = v or "Normal",
		a = false,
		l = false,
		t = 0,
	}
	self.dticker:reset()
end

function Scene:SayAnimated(s,n,t,v)
	self.IsTalking = true
	self.dtbl = {
		s = s or "",
		n = n or 0,
		v = v or "Normal",
		a = true,
		l = false,
		t = t or 0,
	}
	self.dticker:reset()
end

function Scene:SayAnimatedLeft(s,n,t,v)
	self.IsTalking = true
	self.dtbl = {
		s = s or "",
		n = n or 0,
		v = v or "Normal",
		a = true,
		l = true,
		t = t or 0,
	}
	self.dticker:reset()
end

function Scene:drawDialogue()
	if self.IsTalking then
		local dt = self.dticker:get()
		local sl = utf8.len(self.dtbl.s)/60
		-- love.graphics.rectangle("fill",
		-- 	(SCREEN_X/12),
		-- 	(SCREEN_Y/8),
		-- 	((SCREEN_X*5)/6),
		-- 	(SCREEN_Y/4),
		-- 25)

		local Tx = ((SCREEN_X * 55)/60)
		local Ty = ((SCREEN_Y * 7)/8)

		if self.dtbl.a then
			love.graphics.setColor(0.7,0.7,0.7,0.5)
			love.graphics.rectangle(
				"fill",
				SCREEN_X*(25/600),
				SCREEN_Y*(25/400),
				Tx,
				Ty
			)
			love.graphics.setColor(1,1,1,1)
		end

		local img = image.getImage("Dialogue")
		local nx = (SCREEN_X*60)/600
		local ny = (SCREEN_Y*50)/400
		local sx = nx
		local sy = (SCREEN_Y*80)/400

		if self.dtbl.l then
			img = image.getImage("Dialogue_Left")
			nx = (SCREEN_X*185)/600
			ny = (SCREEN_Y*50)/400
			sx = nx
			sy = (SCREEN_Y*80)/400
		end

		love.graphics.draw(
			img,
			SCREEN_X*(25/600),
			SCREEN_Y*(25/400),
			0,
			Tx/img:getWidth(),
			Ty/img:getHeight()
		)

		love.graphics.print(
			{{0,0,0},tostring(Names[self.dtbl.n])..":"},
			nx, ny,
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.printf(
			{{0,0,0},spString(self.dtbl.s,1,self.dticker)},
			sx, sy,
			(SCREEN_X*350)/600,
			"left",
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if self.dtbl.a then
			local aname = tostring(Names[self.dtbl.n]).."_A_"..tostring(self.dtbl.t)
			local aimg = image.getImage(aname)
			if aimg then
				local t = math.max(0,math.min(dt,0.1))
				love.graphics.setColor(1,1,1,t/0.1)
				love.graphics.draw(
					aimg,
					SCREEN_X*(25/600),
					SCREEN_Y*(25/400),
					0,
					Tx/aimg:getWidth(),
					Ty/aimg:getHeight()
				)
				love.graphics.setColor(1,1,1,1)
			end
		end
		
		Voices[self.dtbl.v]:play()
		if dt > sl then
			Voices[self.dtbl.v]:pause()
			Voices[self.dtbl.v]:seek(0)
		end
		
		if dt < (sl + DialogueBuffer) then
			self.dticker(love.timer.getDelta())
		else
			-- stop talking
			Voices[self.dtbl.v]:pause()
			Voices[self.dtbl.v]:seek(0)
			self.dtbl = nil
			self.IsTalking = false
			self.dticker:reset()
		end
	end
end

function Scene:transition(self,t)
	GameState = "What? Broken Animation?"
end

function Scene:AfterEffect(self)
	
end
