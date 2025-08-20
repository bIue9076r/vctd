image.newImage("introback","/Assets/intro.png")
introback = image.getImage("introback")

-- ticker for stagger printing
introTick = ticker.new()
introSt1 = ""
introSt2 = ""
introSt3 = ""

function Intro_Draw()
	-- draw the intro background
	local sx = SCREEN_X/introback:getWidth()
	local sy = SCREEN_Y/introback:getHeight()
	love.graphics.draw(introback,0,0,0,sx,sy)
	
	introSt1 = String.get(1)
	introSt2 = String.get(2)
	introSt3 = String.get(3)
	
	-- stagger print text
	love.graphics.print({{1,1,1},spString(introSt1,1,introTick)},(SCREEN_X/12),(SCREEN_Y/8),0,SCREEN_X/600,SCREEN_Y/400)
	love.graphics.print({{1,1,1},spString(introSt2,1,introTick)},((SCREEN_X*5)/24),((SCREEN_Y*5)/8),0,SCREEN_X/600,SCREEN_Y/400)
	love.graphics.print({{1,1,1},spString(introSt3,1,introTick)},((SCREEN_X*3)/24),(SCREEN_Y/4),0,SCREEN_X/600,SCREEN_Y/400)
end

function Intro_Update(dt)
	-- stop ticking when string is complete
	if introTick:get() < math.max(utf8.len(introSt1),utf8.len(introSt2),utf8.len(introSt3)) then
		introTick()
	end
end

function Intro_Keypressed(key)
	if key == "return" then
		GameState = WORLD
	end
end
