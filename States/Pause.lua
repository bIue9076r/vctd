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
				GameState = WORLD
			end
		end,
	}
}

function Pause_Draw()
	Pause_Modes[Pause_Mode].Draw()
end

function Pause_Update(dt)
	Pause_Modes[Pause_Mode].Update(dt)
end

function Pause_Keypressed(key)
	Pause_Modes[Pause_Mode].Keypressed(key)
end