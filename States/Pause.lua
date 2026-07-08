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
				Pause_SwitchMode(2)
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set(self.Anim_t)
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
			love.graphics.print({{0,0,0},"Menu"},(SCREEN_X/12),(SCREEN_Y/8),0,SCREEN_X/600,SCREEN_Y/400)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Jukebox_play()
				GameState = WORLD
			elseif key == "return" then
				Pause_SwitchMode(3)
			end
		end,

		Mousepressed = function(self,x,y,button)
			if button == 1 then
				Pause_SwitchMode(3)
			elseif button == 2 then
				Jukebox_play()
				GameState = WORLD
			end
		end,
	},

	[3] = {
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

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",50,50,500,300)
			love.graphics.setColor(1,1,1)

			love.graphics.rectangle("fill",
				50,
				50,
				lerp(500,2,self.Anim_t:get()/self.Amax),
				300
			)
		end,

		Update = function(self,dt)
			self.Anim_t(dt)

			if self.Anim_t:get() >= self.Amax then
				Pause_SwitchMode(5)
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set(self.Anim_t)
		end,
	},

	[4] = {
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

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",50,50,500,300)
			love.graphics.setColor(1,1,1)

			love.graphics.rectangle("fill",
				50,
				50,
				lerp(2,500,self.Anim_t:get()/self.Amax),
				300
			)
		end,

		Update = function(self,dt)
			self.Anim_t(dt)

			if self.Anim_t:get() >= self.Amax then
				Pause_SwitchMode(2)
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set(self.Anim_t)
		end,
	},

	[5] = {
		Load = function(self)
			
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.0,0.2,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",50,50,500,300)
			love.graphics.setColor(1,1,1)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Pause_SwitchMode(4)
			end
		end,

		Mousepressed = function(self,x,y,button)
			if button == 2 then
				Pause_SwitchMode(4)
			end
		end,
	}
}

function Pause_SwitchMode(n)
	Pause_Mode = n
	Pause_Modes[Pause_Mode]:Load()
end

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
