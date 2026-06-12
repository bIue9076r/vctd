Guitar = Item.new(B_Guitar_R)
Guitar.name = "Varisa's Guitar"
Guitar.sound = sound.getSound("noodle_1")

function Guitar:act(key)
	if self.sound then
		local play = false
		self.sound:stop()

		if key == "1" then
			self.sound = sound.getSound("noodle_1")
			play = true
		elseif key == "2" then
			self.sound = sound.getSound("noodle_2")
			play = true
		elseif key == "3" then
			self.sound = sound.getSound("noodle_3")
			play = true
		elseif key == "4" then
			self.sound = sound.getSound("noodle_4")
			play = true
		elseif key == "5" then
			self.sound = sound.getSound("noodle_5")
			play = true
		elseif key == "6" then
			self.sound = sound.getSound("noodle_6")
			play = true
		elseif key == "7" then
			self.sound = sound.getSound("noodle_7")
			play = true
		elseif key == "return" then
			local n = math.random(1,7)
			self.sound = sound.getSound("noodle_"..n)
			play = true
		end

		if play then
			self.sound:seek(0)
			self.sound:setVolume(Game_SfxVolume)
			self.sound:play()
		end
	end
end
