function lerp(a,b,t)
	return b*t - a*(t - 1)
end

function skyTint()
	local h1 = Time.getHour()
	local h2 = h1 + 1
	local tm = (Time.getMin() / 60)
	if h2 >= 24 then h2 = 0 end
	local r1 = Sky[h1][1]
	local g1 = Sky[h1][2]
	local b1 = Sky[h1][3]
	local r2 = Sky[h2][1]
	local g2 = Sky[h2][2]
	local b2 = Sky[h2][3]

	local bh = 0.2*Mood.darkness
	
	love.graphics.setColor(
		lerp(r1,r2,tm) - bh,
		lerp(g1,g2,tm) - bh,
		lerp(b1,b2,tm) - bh
	)
end

function drawBackTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = Map:getTile(j,i)
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

function drawForeTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = Map:getTile(j,i)
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

function drawSprites()
	-- Time stuff --
	skyTint()
	--
	
	local Cx = Plr.x
	local Cy = Plr.y
	
	drawBackTiles()
	drawBackProps()
	drawChars(Cx,Cy)
	drawForeProps()
	drawForeTiles()
	love.graphics.setColor(1,1,1)
end

function drawSpritesNoTint()
	local Cx = Plr.x
	local Cy = Plr.y
	
	drawBackTiles()
	drawBackProps()
	drawChars(Cx,Cy)
	drawForeProps()
	drawForeTiles()
end

function drawChars(Cx,Cy)
	local Tx = (SCREEN_X/24)
	local Ty = (SCREEN_Y/16)
	
	-- draw npcs
	for i,v in pairs(Map.npcs) do
		v()
	end
	
	-- draw players
	local img, psx, psy
	img = image.getImage(CtS[Plr.c])
	psx = (((Cx*25) + 25)/(600))
	psy = (((Cy*25) + 25)/(400))
	love.graphics.draw(
		img,
		SCREEN_X*psx,
		SCREEN_Y*psy,
		0,
		Tx/img:getWidth(),
		Ty/img:getHeight()
	)
	
	Plr.inv:draw()
end

function drawForeProps()
	for i,v in pairs(Map.props) do
		if v.b == 0 then
			v()
		end
	end
end

function drawBackProps()
	for i,v in pairs(Map.props) do
		if v.b == 1 then
			v()
		end
	end
end

function drawBackgound()
	-- calculation proportions for the screen
	local Tx = (SCREEN_X/6)
	local Ty = (SCREEN_Y/4)
	
	local backtile = image.getImage("backtile")
	
	for i = 1,4 do
		for j = 1,6 do
			love.graphics.draw(
				backtile,
				(j-1)*Tx,
				(i-1)*Ty,
				0,
				Tx/backtile:getWidth(),
				Ty/backtile:getHeight()
			)
		end
	end
	
	if not(HideControls) and (GameState == WORLD) then
		love.graphics.print({{1,1,1},String.get(49)..GameDay},
			SCREEN_X/60,
			0,
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print({{1,1,1},String.get(50)},
			SCREEN_X/60,
			(SCREEN_Y*37)/40,
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
	end
end

function drawDialogue()
	if IsTalking then
		local dt = World.dticker:get()
		local sl = utf8.len(World.dtbl.s)/60
		-- love.graphics.rectangle("fill",
		-- 	(SCREEN_X/12),
		-- 	(SCREEN_Y/8),
		-- 	((SCREEN_X*5)/6),
		-- 	(SCREEN_Y/4),
		-- 25)
		local Tx = ((SCREEN_X * 55)/60)
		local Ty = ((SCREEN_Y * 7)/8)

		if World.dtbl.a then
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

		if World.dtbl.l then
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
			{{0,0,0},tostring(Names[World.dtbl.n])..":"},
			nx, ny,
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.printf(
			{{0,0,0},spString(World.dtbl.s,1,World.dticker)},
			sx, sy,
			(SCREEN_X*350)/600,
			"left",
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if World.dtbl.a then
			local aname = tostring(Names[World.dtbl.n]).."_A_"..tostring(World.dtbl.t)
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
		
		Voices[World.dtbl.v]:play()
		if dt > sl then
			Voices[World.dtbl.v]:pause()
			Voices[World.dtbl.v]:seek(0)
		end
		
		if dt < (sl + DialogueBuffer) then
			World.dticker(love.timer.getDelta())
		else
			-- End Voice
			Voices[World.dtbl.v]:pause()
			Voices[World.dtbl.v]:seek(0)
		end
	end
end
