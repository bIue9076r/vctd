Play = {}
Play.Scenes = {}
--require("/scenes/Scenes")

Play.scene = Scene.new()
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