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
			love.graphics.print({{0,0,0},"Menu"},60,60)

			love.graphics.setColor(1,0,1)
			love.graphics.rectangle("fill",60,120,140-60,150-120)

			love.graphics.setColor(0,1,1)
			love.graphics.rectangle("fill",60,180,110-60,210-180)

			love.graphics.setColor(1,1,0)
			love.graphics.rectangle("fill",60,240,140-60,270-240)
			love.graphics.setColor(1,1,1)

			love.graphics.print({{0,0,0},"Settings"},60,120)
			love.graphics.print({{0,0,0},"Save"},60,180)
			love.graphics.print({{0,0,0},"Resume"},60,240)
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
				if x >= 60 and x <= 140 and y >= 120 and y <= 150 then
					Pause_SwitchMode(3)
				elseif x >= 60 and x <= 110 and y >= 180 and y <= 210 then
					Save_LastState = GameState
					GameState = SAVE
				elseif x >= 60 and x <= 140 and y >= 240 and y <= 270 then
					Jukebox_play()
					GameState = WORLD
				end
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
			love.graphics.print({{0,0,0},"Settings"},60,60)

			love.graphics.print({{0,0,0},"Video"},60,120)
			love.graphics.print({{0,0,0},"Language"},60,180)
			love.graphics.print({{0,0,0},"Audio"},60,240)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Pause_SwitchMode(4)
			end
		end,

		Mousepressed = function(self,x,y,button)
			if button == 1 then
				if x >= 60 and x <= 140 and y >= 120 and y <= 150 then
					Pause_SwitchMode(6)
				elseif x >= 60 and x <= 110 and y >= 180 and y <= 210 then
					Pause_SwitchMode(9)
				elseif x >= 60 and x <= 140 and y >= 240 and y <= 270 then
					Pause_SwitchMode(12)
				end
			elseif button == 2 then
				Pause_SwitchMode(4)
			end
		end,
	},

	[6] = {
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

			love.graphics.rectangle("fill",50,50,500,300)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",
				50,
				50,
				lerp(500,2,self.Anim_t:get()/self.Amax),
				300
			)
			love.graphics.setColor(1,1,1)
		end,

		Update = function(self,dt)
			self.Anim_t(dt)

			if self.Anim_t:get() >= self.Amax then
				Pause_SwitchMode(8)
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set(self.Anim_t)
		end,
	},

	[7] = {
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

			love.graphics.rectangle("fill",50,50,500,300)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",
				50,
				50,
				lerp(2,500,self.Anim_t:get()/self.Amax),
				300
			)
			love.graphics.setColor(1,1,1)
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

	[8] = {
		Load = function(self)
			
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.5,0.5,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)

			love.graphics.rectangle("fill",50,50,500,300)
			love.graphics.setColor(1,1,1)
			love.graphics.print({{0,0,0},"Video"},60,60)

			love.graphics.print({{0,0,0},"Fullscreen"},60,120)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Pause_SwitchMode(7)
			end
		end,

		Mousepressed = function(self,x,y,button)
			if button == 2 then
				Pause_SwitchMode(7)
			end
		end,
	},

	[9] = {
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

			love.graphics.rectangle("fill",50,50,500,300)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",
				50,
				50,
				lerp(500,2,self.Anim_t:get()/self.Amax),
				300
			)
			love.graphics.setColor(1,1,1)
		end,

		Update = function(self,dt)
			self.Anim_t(dt)

			if self.Anim_t:get() >= self.Amax then
				Pause_SwitchMode(11)
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set(self.Anim_t)
		end,
	},

	[10] = {
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

			love.graphics.rectangle("fill",50,50,500,300)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",
				50,
				50,
				lerp(2,500,self.Anim_t:get()/self.Amax),
				300
			)
			love.graphics.setColor(1,1,1)
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

	[11] = {
		Load = function(self)
			
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.5,0.5,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)

			love.graphics.rectangle("fill",50,50,500,300)
			love.graphics.setColor(1,1,1)
			love.graphics.print({{0,0,0},"Language"},60,60)

			love.graphics.print({{0,0,0},"Locale: "..LocaleString()},60,120)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Pause_SwitchMode(10)
			end
		end,

		Mousepressed = function(self,x,y,button)
			if button == 2 then
				Pause_SwitchMode(10)
			end
		end,
	},

	[12] = {
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

			love.graphics.rectangle("fill",50,50,500,300)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",
				50,
				50,
				lerp(500,2,self.Anim_t:get()/self.Amax),
				300
			)
			love.graphics.setColor(1,1,1)
		end,

		Update = function(self,dt)
			self.Anim_t(dt)

			if self.Anim_t:get() >= self.Amax then
				Pause_SwitchMode(14)
			end
		end,

		Keypressed = function(self,key)
			
		end,

		Mousepressed = function(self,x,y,button)
			self.Anim_t:set(self.Anim_t)
		end,
	},

	[13] = {
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

			love.graphics.rectangle("fill",50,50,500,300)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",
				50,
				50,
				lerp(2,500,self.Anim_t:get()/self.Amax),
				300
			)
			love.graphics.setColor(1,1,1)
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

	[14] = {
		Load = function(self)
			
		end,

		Draw = function(self)
			drawBackgound()
			love.graphics.setColor(0.5,0.5,0.5)
			drawSpritesNoTint()
			love.graphics.setColor(1,1,1)

			love.graphics.setColor(0.5,0.5,0.5)
			love.graphics.rectangle("fill",50,50,500,300)
			love.graphics.setColor(1,1,1)
			love.graphics.print({{0,0,0},"Audio"},60,60)

			love.graphics.print({{0,0,0},"Main Volume"},60,120)
			love.graphics.print({{0,0,0},"Music Volume"},60,180)
			love.graphics.print({{0,0,0},"SFX Volume"},60,240)
		end,

		Update = function(self,dt)
			
		end,

		Keypressed = function(self,key)
			if key == "escape" then
				Pause_SwitchMode(13)
			end
		end,

		Mousepressed = function(self,x,y,button)
			if button == 2 then
				Pause_SwitchMode(13)
			end
		end,
	},
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
