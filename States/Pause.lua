-- Pause menu
Pause_Mode = 1
Pause_Modes = {
	[1] = {
		Anim_t = ticker.new(),
		Amax = 0.25,

		Load = function(self)
			self.Anim_t:reset()
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.5,0.5,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)
			
			love.graphics.rectangle("fill",
				lerp(300,50,self.Anim_t:get()/self.Amax),
				50,
				lerp(2,500,self.Anim_t:get()/self.Amax),
				300
			)
		end,

		Update = function(self,dt)
			self.Anim_t(dt)

			if self.Anim_t:get() >= self.Amax then
				Pause_Mode = 2
				Pause_Modes[Pause_Mode]:Load()
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set()
		end,
	},

	[2] = {
		Load = function(self)
			
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.5,0.5,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)
			
			love.graphics.rectangle("fill",50,50,500,300)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Jukebox_play()
				GameState = WORLD
			elseif key == "return" then
				Pause_Mode = 2
			end
		end,

		Mousepressed = function(self,x,y,button)
			
		end,
	},

	[3] = {
		Load = function(self)
			
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.0,0.2,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Pause_Mode = 1
				Pause_Modes[Pause_Mode]:Load()
			end
		end,

		Mousepressed = function(self,x,y,button)
			
		end,
	}
}

function Pause_Draw()
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Draw then
		Pause_Modes[Pause_Mode]:Draw()
	end
end

function Pause_Update(dt)
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Update then
		Pause_Modes[Pause_Mode]:Update(dt)
	end
end

function Pause_Keypressed(key)
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Keypressed then
		Pause_Modes[Pause_Mode]:Keypressed(key)
	end
end

function Pause_Mousepressed(x,y,button)
	if Pause_Modes[Pause_Mode] and Pause_Modes[Pause_Mode].Mousepressed then
		Pause_Modes[Pause_Mode]:Mousepressed(x,y,button)
	end
end
