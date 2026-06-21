-- Pause menu
Pause_Mode = 1
Pause_Modes = {
	[1] = {
		Draw = function()
			drawBackgound()
			love.graphics.setColor(0.5,0.5,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)
		end,

		Update = function(dt)
			
		end,

		Keypressed = function(key)
			if key == "escape" then
				Jukebox_play()
				GameState = WORLD
			elseif key == "return" then
				Pause_Mode = 2
			end
		end,

		Mousepressed = function(x,y,button)
			
		end,
	},

	[2] = {
		Draw = function()
			drawBackgound()
			love.graphics.setColor(0.0,0.2,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)
		end,

		Update = function(dt)
			
		end,

		Keypressed = function(key)
			if key == "escape" then
				Pause_Mode = 1
			end
		end,

		Mousepressed = function(x,y,button)
			
		end,
	}
}

function Pause_Draw()
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Draw then
		Pause_Modes[Pause_Mode].Draw()
	end
end

function Pause_Update(dt)
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Update then
		Pause_Modes[Pause_Mode].Update(dt)
	end
end

function Pause_Keypressed(key)
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Keypressed then
		Pause_Modes[Pause_Mode].Keypressed(key)
	end
end

function Pause_Mousepressed(x,y,button)
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Mousepressed then
		Pause_Modes[Pause_Mode].Mousepressed(x,y,button)
	end
end
