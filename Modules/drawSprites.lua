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
end

function drawDialogue()
	if IsTalking then
		local dt = World.dticker:get()
		local sl = utf8.len(World.dtbl.s)
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			(SCREEN_Y/4),
		25)
		
		love.graphics.print(
			{{0,0,0},Names[World.dtbl.n]..":"},
			(SCREEN_X/8),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print(
			{{0,0,0},spString(World.dtbl.s,1,World.dticker)},
			(SCREEN_X/8),
			((SCREEN_Y*9)/40),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		Voices[World.dtbl.v]:play()
		if dt > sl then
			Voices[World.dtbl.v]:pause()
			Voices[World.dtbl.v]:seek(0)
		end
		
		if dt < (sl + DialogueBuffer) then
			World.dticker()
		else
			-- End Voice
			Voices[World.dtbl.v]:pause()
			Voices[World.dtbl.v]:seek(0)
		end
	end
end
