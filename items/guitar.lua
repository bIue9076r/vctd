Guitar = Item.new(B_Guitar_L)
Guitar.name = "Varisa's Guitar"
Guitar.sound = sound.getSound("noodle_1")

function Guitar:act(key)
	if self.sound and (not muted) then
		if key == "1" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_1")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "2" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_2")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "3" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_3")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "4" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_4")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "5" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_5")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "6" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_6")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "7" then
			self.sound:stop()
			self.sound = sound.getSound("noodle_7")
			self.sound:seek(0)
			self.sound:play()
		elseif key == "return" then
			local n = math.random(1,7)
			self.sound:stop()
			self.sound = sound.getSound("noodle_"..n)
			self.sound:seek(0)
			self.sound:play()
		end
	end
end
