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
	}
}

function Pause_Draw()
	local f = Pause_Modes[Pause_Mode].Draw
	if f then f() end
end

function Pause_Update(dt)
	local f = Pause_Modes[Pause_Mode].Update
	if f then f(dt) end
end

function Pause_Keypressed(key)
	local f = Pause_Modes[Pause_Mode].Keypressed
	if f then f(key) end
end