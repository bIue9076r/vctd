Rachel_Guitar_Broke = Item.new(R_Guitar_L)
Rachel_Guitar_Broke.name = "Rachel's Busted Guitar"
-- Rachel_Guitar_Broke.sound = sound.getSound("Broken_guitar")
Rachel_Guitar_Broke.save = "DAY1"

function Rachel_Guitar_Broke:act(key)
	if self.sound and (not muted) then
		if key == "e" then
			local fixable = false

			if fixable then
				-- Fix and remove
			else
				self.sound:stop()
				self.sound:seek(0)
				self.sound:play()
			end
		end
	end
end
