Play = {}
Play.scene = Scene.new(World.Map[1])
Play.scene.tickGoal = 400
Play.scene.transition = function(self,t)
	if(t < 200) then
		Play.scene.Hour = Scene.lerp(0,7.5,t/200)
		Play.scene.Min = math.floor(60 * (Play.scene.Hour - math.floor(Play.scene.Hour)))
		Play.scene.Hour = math.floor(Play.scene.Hour)
	elseif(t < 400) then
		
	else
		if Play.unmuteAfter then
			muted = false
			GameState = Intro
		end
	end
end

Play.unmuteAfter = true
Play.ticker = ticker.new()

function Play.Draw()
	Play.scene:draw()
	Play.scene:drawDialoge()
end

function Play.Update(dt)
	if Play.ticker:get() < Play.scene.tickGoal then
		Play.ticker()
	end
	
	Play.scene:transition(Play.ticker:get())
end

function Play.Keypressed(key)
	-- if 'enter' then skip
	if key == "return" then
		Play.ticker:set(Play.scene.tickGoal)
	end
end