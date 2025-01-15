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
	
	love.graphics.setColor(
		lerp(r1,r2,tm),
		lerp(g1,g2,tm),
		lerp(b1,b2,tm)
	)
end

function drawBackTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = Map:getTile(j,i)
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

function drawForeTiles()
	for i = 1, MAP_Y do
		for j = 1, MAP_X do
			local t = Map:getTile(j,i)
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

function drawSprites()
	-- Time stuff --
	skyTint()
	--
	
	local Cx = Plr.x
	local Cy = Plr.y
	
	drawBackTiles()
	drawChars(Cx,Cy)
	drawProps()
	drawForeTiles()
	love.graphics.setColor(1,1,1)
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
	
	-- TODO: draw player items here
end

function drawProps()
	for i,v in pairs(Map.props) do
		v()
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

function drawDialoge()
	if IsTalking then
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
		
		if World.dticker:get() < (#World.dtbl.s + DialogeBuffer) then
			World.dticker()
		else
			-- stop talking
			World.dtbl = nil
			IsTalking = false
			World.dticker:reset()
			if World.ChangeMap then
				Map = World.NextMap
				Time.changed()
				World.NextMap = nil
				World.ChangeMap = false
			end
			if World.AfterEffect then
				World.AfterEffect()
				World.AfterEffect = function()
					
				end
			end
		end
	end
end
