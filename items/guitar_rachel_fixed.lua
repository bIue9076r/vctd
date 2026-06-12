Rachel_Guitar = Item.new(R_Guitar_L)
Rachel_Guitar.name = "Rachel's Guitar"
-- Rachel_Guitar.sound = sound.getSound("Guitar_test")
Rachel_Guitar.save = "DAY1"

function Rachel_Guitar:act(key)
	if self.sound then
		if key == "return" then
			self.sound:stop()
			self.sound:seek(0)
			self.sound:setVolume(Game_SfxVolume)
			self.sound:play()
		end
	end
end
