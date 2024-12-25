image.newImage("introback","/Assets/intro.png")
introback = image.getImage("introback")

-- ticker for stagger printing
introTick = ticker.new()

-- strings for stagger printing
introSt1 = "Varisa Carmel: Teenage Detective"
introSt2 = "Press enter to continue"

function Intro_Draw()
	-- draw the intro background
	local sx = SCREEN_X/introback:getWidth()
	local sy = SCREEN_Y/introback:getHeight()
	love.graphics.draw(introback,0,0,0,sx,sy)
	
	-- stagger print text
	love.graphics.print({{1,1,1},spString(introSt1,1,introTick)},(SCREEN_X/12),(SCREEN_Y/8),0,SCREEN_X/600,SCREEN_Y/400)
	love.graphics.print({{1,1,1},spString(introSt2,1,introTick)},((SCREEN_X*5)/24),(SCREEN_Y/4),0,SCREEN_X/600,SCREEN_Y/400)
end

function Intro_Update(dt)
	-- stop ticking when string is complete
	if introTick:get() < math.max(#introSt1,#introSt2) then
		introTick()
	end
end

function Intro_Keypressed(key)
	if key == "return" then
		GameState = WORLD
		Map = World.Map[1]
		setPlr(0,0)
	end
end